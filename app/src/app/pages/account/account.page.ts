import { Component, OnInit } from '@angular/core';
import { ApiService } from '../../services/api.service';
import { DataService } from '../../services/data.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-account',
  templateUrl: './account.page.html',
  styleUrls: ['./account.page.scss'],
})
export class AccountPage implements OnInit {

  constructor(public api:ApiService, public data: DataService, private router: Router) { }

  ngOnInit() {
  }

  logout(){
    const action = "logout";
    const usrCode = localStorage.getItem("usr_code");
    const now = new Date();
    const data = '&logout='+"true"+'&userid='+usrCode+'&currentdate='+now.toUTCString();

    this.api.getData(action, data).then(
      (response: any) => {
        if(response.msg === 'success'){
          localStorage.clear();
          if (!localStorage.getItem("usr_apikey")){
            const action = "initapps";
            this.api.initApp(action)
          .then(function (response:any){
            localStorage.setItem("usr_apikey", response.data.initcode);
            localStorage.setItem("usr_code",response.data.initid);
            localStorage.setItem("usr_cipher",response.data.initcipher);
            localStorage.setItem("Cart", "[]")
          });
          this.router.navigate(['login']);
        }
      
        }
      },
      (error) => {
        console.error('Error using logout api:', error);
      }
    );
  }
}
