import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class DataService {
  private data:string[] = [];
  constructor(private http: HttpClient) { }
  setData(id:any, data:any){
    this.data[id]=data;
  }
  getData(id:any){
    return this.data[id];
  }

  getLocalStorage(name:string){
    return localStorage.getItem(name);
  }
  setLocalStorage(name:string, data:any){
    return localStorage.setItem(name,data);
  }
  removeLocal(name:string){
    return localStorage.removeItem(name);
  }

}
