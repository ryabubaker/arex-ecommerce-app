import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { DataService } from '../../services/data.service';
import { ApiService } from 'src/app/services/api.service';



@Component({
  selector: 'app-details',
  templateUrl: './details.page.html',
  styleUrls: ['./details.page.scss'],
})
export class DetailsPage implements OnInit {

  item:any;
  
  constructor(
    private active:ActivatedRoute, 
    public data: DataService, 
    public api: ApiService
  ) {

  }

  ngOnInit() {
    if (this.active.snapshot.data['payload']){
      this.item= this.active.snapshot.data['payload'];
    }
    
    
    this.onViewproduct();
  }

  onViewproduct(){
    const action = "viewcount";
    const prodId = this.item.id;
    const data = '&prodId='+ prodId;

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          console.log("Success incresing view count")
        }  
      },
      (error) => {
        console.error('Error increasing View Count:', error);
      }
    );
  }
  

}
