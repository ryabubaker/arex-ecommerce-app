import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PagesPage } from './pages.page';
import { ResolverService } from '../services/resolver.service';

const routes: Routes = [
  {
    path: '',
    component: PagesPage,
    children:[
      {
        path: '',
        redirectTo: 'home',
        pathMatch: 'full'
      },
      {
        path: 'home',
        children: [{
          path: '',
          loadChildren: () => import('../pages/home/home.module').then( m => m.HomePageModule)
        },
        {
          path: 'details/:id',
          resolve: {payload: ResolverService},
          loadChildren: () => import('./details/details.module').then( m => m.DetailsPageModule)
        }
      ]
      }
      ,
      {
        path: 'categorytab',
        children: [{
          path: '',
          loadChildren: () => import('./categorytab/categorytab.module').then( m => m.CategorytabPageModule)
        },
        {
          path: 'products/:id',
          resolve: {payload: ResolverService},
          loadChildren: () => import('./products/products.module').then( m => m.ProductsPageModule)
        }
      ]
      },

      {
        path: 'cart',
        loadChildren: () => import('./cart/cart.module').then( m => m.CartPageModule)
      },
      {
        path: 'whishlist',
        loadChildren: () => import('./whishlist/whishlist.module').then( m => m.WhishlistPageModule)
      },
      {
        path: 'account',
        loadChildren: () => import('./account/account.module').then( m => m.AccountPageModule)
      },
      {
        path: 'checkout',
        loadChildren: () => import('./checkout/checkout.module').then( m => m.CheckoutPageModule)
      }
    ]
  }
  
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PagesPageRoutingModule {}
