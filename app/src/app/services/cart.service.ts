import { Injectable } from '@angular/core';
import { DataService } from './data.service';

@Injectable({
  providedIn: 'root'
})

export class CartService {
  totalPrice: number =  0;
  constructor(public data: DataService) {
    
  }

  getCart(){
    let cart = localStorage.getItem('Cart') as string;
    return JSON.parse(cart);
  }
  putCart(data:any){
    
    return localStorage.setItem("Cart", JSON.stringify(data));
  }

  addToCart(product: { id: any; }){
    let cart = this.getCart();

    const itemexists = cart.findIndex((item: { id: any; }) => item.id === product.id );


    if (itemexists !== -1) {
      cart[itemexists].quantity += 1;
    } else {
      cart.push(product);
    }
    this.putCart(cart);
    this.updateTotal();
  }


  removeCart(ProdId: any){
    let cart = this.getCart();

    const updatedCart = cart.filter((item: { id: any; })=> item.id !== ProdId);

    this.putCart(updatedCart);
    this.updateTotal();
  }

  updateTotal(){
    this.totalPrice=  0;
    let cart = JSON.parse(localStorage.getItem('Cart') as string);
    
    for (let i = 0; i < cart.length; i++) {
      const price = cart[i].final_price;
      this.totalPrice += price* cart[i].quantity;
      
    }
    return this.totalPrice;
  }
}
