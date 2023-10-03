import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApiService } from 'src/app/services/api.service';
import { DataService } from 'src/app/services/data.service';

@Component({
  selector: 'app-subcategories',
  templateUrl: './subcategories.page.html',
  styleUrls: ['./subcategories.page.scss'],
})
export class SubcategoriesPage implements OnInit {
  categories: any = [];
  subcategories: any = [];
  rootId!: string;
  constructor(private api: ApiService, private router: Router, private route: ActivatedRoute, private data: DataService) { 
    this.rootId = this.route.snapshot.data['payload'];

  }

  ngOnInit() {
    this.fetchSubCategories(this.rootId);
  }
  fetchSubCategories(categoryId:string) {
    const action = "fetchsubcategory";
    const data = '&categoryId='+categoryId;

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

  routetoproduct(item:any){
    this.data.setData('i',item)
    this.router.navigate(['pages/categorytab/products/i']);
  }

}
