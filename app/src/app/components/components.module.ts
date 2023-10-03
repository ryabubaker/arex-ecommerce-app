import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";

import { LikedComponent } from "./liked/liked.component";
import {AddcartBtnComponent } from "./addcart-btn/addcart-btn.component";
import { SearchComponent } from "./search/search.component";
import { ProductCardComponent } from "./product-card/product-card.component";
import { IonicModule } from "@ionic/angular";
import { ReactiveFormsModule, FormsModule } from "@angular/forms";
import { PlusMinusToggleComponent } from './plus-minus-toggle/plus-minus-toggle.component';

@NgModule ({
    imports:[
        CommonModule,
        IonicModule,
        FormsModule,
        ReactiveFormsModule
    ],
    declarations:[LikedComponent, AddcartBtnComponent, SearchComponent, ProductCardComponent, PlusMinusToggleComponent],
    exports:[LikedComponent, AddcartBtnComponent, SearchComponent, ProductCardComponent, PlusMinusToggleComponent ]
}) 
export class ComponentsModule {}