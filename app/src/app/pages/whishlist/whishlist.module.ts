import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { WhishlistPageRoutingModule } from './whishlist-routing.module';
import { ComponentsModule } from 'src/app/components/components.module';
import { WhishlistPage } from './whishlist.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    WhishlistPageRoutingModule,
    ComponentsModule
  ],
  declarations: [WhishlistPage]
})
export class WhishlistPageModule {}
