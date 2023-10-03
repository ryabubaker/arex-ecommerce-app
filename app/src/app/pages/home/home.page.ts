import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { register } from 'swiper/element/bundle';
import { DataService } from '../../services/data.service';
import { ApiService } from 'src/app/services/api.service';
import { CartService } from '../../services/cart.service';

register();
@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  styleUrls: ['./home.page.scss'],
})
export class HomePage implements OnInit {
  categories = [
    { name: 'Fashion', icon: 'fashion.jpg' },
    { name: 'Accessories', icon: 'favicon.png' },
    { name: 'Electronics', icon: 'electronics.png' },
    { name: 'Beauty and Personal Care', icon: 'favicon.png' },
    { name: 'Sports and Outdoors', icon: 'sports.png' },
    { name: 'Health and Wellness', icon: 'favicon.png' },
    
  ];

  trending: any = [];
  onSale: any = [];
  isLoading:boolean = false;
  liked!:boolean;
  
  constructor(private router: Router, public data:DataService, public api: ApiService, public cart: CartService)  {
    
   }

  ngOnInit() {
    this.fetchTrendingProducts();
    this.fetchOnSale();
  }
  ionViewDidEnter(){
   
  }
  fetchTrendingProducts(){
    const action = "fetchproductbycategory";
    const usrCode = localStorage.getItem("usr_code");
    const data = '&usrCode='+usrCode + '&fetchby=trending';

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          this.trending = response.data;
          this.isLoading=true;
          console.log("Success Fetching Trending Products")
        } else {
          this.trending = []
          this.isLoading=false;
        }  
      },
      (error) => {
        console.error('Error Fetching Trending Products:', error);
      }
    );
  }

  fetchOnSale(){
    const action = "fetchproductbycategory";
    const usrCode = localStorage.getItem("usr_code");
    const data = '&usrCode='+usrCode + '&fetchby=onSale';

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          this.onSale = response.data;
          this.isLoading=true;
          console.log("Success Fetching Products")
        } else {
          this.trending = []
          this.isLoading=false;  
        }  
      },
      (error) => {
        console.error('Error Fetching OnSale Products:', error);
      }
    );
  }

  
 
}
