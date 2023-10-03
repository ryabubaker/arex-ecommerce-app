import { Component, OnInit, ViewChild } from '@angular/core';
import { ApiService } from 'src/app/services/api.service';
import { DataService } from 'src/app/services/data.service';
import { Router } from '@angular/router';
import { IonModal } from '@ionic/angular';
import { Observable } from 'rxjs';
@Component({
  selector: 'app-products',
  templateUrl: './products.page.html',
  styleUrls: ['./products.page.scss'],
})
export class ProductsPage  {
  @ViewChild('modal')modal!: IonModal;

  products:any = [];
  params: string = '';
  isLoading:boolean = false;
  currentSort: string = '';
  currentSortLabel: string = 'Sort'; 

  sortingOptions = [
    { label: 'Popular', value: 'trending' },
    { label: 'Newest', value: 'newest' },
    { label: 'Price: lowest to high', value: 'ascending' },
    { label: 'Price: highest to low', value: 'descending' }
  ];
  
  constructor(public api: ApiService, public data: DataService, private router: Router) {
    const catinfo: any = this.data.getData("i");
    
    const categoryId = catinfo.rootId || null;
    const subcategoryId = catinfo.subId || null;
    const childCategoryId = catinfo.childId || null;

    if (categoryId !== null) {
      this.params += '&categoryId=' + categoryId;
    }
    
    if (subcategoryId !== null) {
      this.params += '&subcategoryId=' + subcategoryId;
    }
    
    if (childCategoryId !== null) {
      this.params += '&childCategoryId=' + childCategoryId;
    }

    
   }

   ionViewDidEnter(){
    this.fetchProductsByParams();
  }

  fetchProductsByParams(){
    const action = "fetchproductbycategory";
    const usrCode = localStorage.getItem("usr_code");
    const data = this.params + '&usrCode=' + usrCode;

    this.products=[];
    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          this.products = response.data;
          this.isLoading = true;
        }else{
          this.products = [];
        }
      },
      (error) => {
        console.error('Error fetching products:', error);
      }
    );
  }
 
  sortProducts(sortBy: string) {
    this.currentSort = sortBy;
    this.currentSortLabel = this.sortingOptions.find(option => option.value === sortBy)?.label || '';
    const action = "fetchproductbycategory";
    const usrCode = localStorage.getItem("usr_code");
    const data = '&usrCode=' + usrCode + '&fetchby=' + sortBy;

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          this.products = response.data;
          this.isLoading = true;
          this.modal.dismiss(); 
        }else{
          this.products = [];
        }
      },
      (error) => {
        console.error('Error fetching products:', error);
      }
    );
  }


 
  openModal() {
    this.modal.present(); // Show the modal
  }



}
