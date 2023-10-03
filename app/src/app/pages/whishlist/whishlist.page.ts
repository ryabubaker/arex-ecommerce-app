import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ApiService } from 'src/app/services/api.service';
import { DataService } from 'src/app/services/data.service';


@Component({
  selector: 'app-whishlist',
  templateUrl: './whishlist.page.html',
  styleUrls: ['./whishlist.page.scss'],
})
export class WhishlistPage implements OnInit {
  wishlistItems : any = [];
  constructor(public data: DataService, private router: Router, public api: ApiService){
    
    
   }

  ngOnInit() {
   
  }

  ionViewDidEnter(){
    this.fetchwishlist();
  }
 
  fetchwishlist(){
    const action = "fetchwishlist";
    const usrCode = localStorage.getItem("usr_code");

    const data = '&usrCode='+ usrCode;

   
    this.api.getData(action, data).then(
      (response: any) => {
        this.wishlistItems = response.data;

        
      }
    );
  }
  }
    
  
