import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  serverUrl = 'http://127.0.0.1/apiV3/api.php';
  apikey = 'apikey=' + localStorage.getItem("usr_apikey");
  constructor(private http: HttpClient) { }

  initApp(action:any)  {
    var httpHeader = {
      headers: new HttpHeaders({ 'Content-Type': 'application/x-www-form-urlencoded' })
    };
    const payload = 'actions='+ action;
    return new Promise((resolve, rejects)=>{
      try {
        this.http.post(this.serverUrl, payload, httpHeader).subscribe((res: any)=>{
          resolve(res);
        });
      } catch (error) {
        rejects(error);
      }
     
    })
  }

  getData(action:any, data: any)  {
    var httpHeader = {
      headers: new HttpHeaders({ 'Content-Type': 'application/x-www-form-urlencoded' })
    };
    const payload = this.apikey+'&actions='+ action + data;
    return new Promise((resolve, rejects)=>{
      try {
        this.http.post(this.serverUrl, payload, httpHeader).subscribe((res: any)=>{
          resolve(res);
        });
      } catch (error) {
        rejects(error);
      }
     
    })
  }
  
  loadlocaldata(url:string){
    return new Promise ((resolve, rejects)=> {
      try{
        this.http.get(url).subscribe((res: any) => {
          resolve(res);
        });
      } catch (error) {
        rejects(error);
      }
    })
    
  }
}
