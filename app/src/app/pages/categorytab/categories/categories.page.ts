import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ApiService } from 'src/app/services/api.service';
import { DataService } from 'src/app/services/data.service';

@Component({
  selector: 'app-categories',
  templateUrl: './categories.page.html',
  styleUrls: ['./categories.page.scss'],
})
export class CategoriesPage implements OnInit {
  // Ensure the structure of your categories array is like this:
  categories: any = [];

  constructor(private router: Router, private api:ApiService, public data: DataService) { }

  ngOnInit() {
    this.fetchCategories();
  }

  fetchCategories() {
    const action = "fetchcategory";
    const data = '';

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          this.categories = response.data;
        }else{
          this.categories = [];
        }   
      },
      (error) => {
        console.error('Error fetching categories:', error);
      }
    );
  }
  gotoSubcategory(categoryId:string){
    this.data.setData("id",categoryId);
    this.router.navigate(['pages/categorytab/subcategories/id']);
  }

}
