import { Injectable } from '@angular/core';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class WishlistService {
  ;
  case:string = '';
  isLiked: boolean | undefined;

  constructor(public api: ApiService) {
    
   }

  //  toggle(){
  //   if (this.isLiked){
  //     this.case = 'unliked';
  //     this.sendLikeToDB(this.product.id);

  //   } else {
  //     this.case = 'liked';
  //     this.sendLikeToDB(this.product.id);
  //   }
  //  }

  //  sendLikeToDB(prodId:any){
  //   const action = "like";
  //   const usrCode = localStorage.getItem("usr_code");

  //   const data = '&usrCode='+ usrCode +'&prodId='+ prodId+ '&case='+this.case;

   
  //   this.api.getData(action, data).then(
  //     (response: any) => {
  //       if( response.msg === "success"){
  //         this.isLiked=!this.isLiked;
  //       }
        
  //     },
  //     (error) => {
  //       console.error('Error liking products:', error);
  //     }
  //   );
  // }
 
  
}

