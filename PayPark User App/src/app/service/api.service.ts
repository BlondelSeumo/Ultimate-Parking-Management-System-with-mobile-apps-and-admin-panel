import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { ToastController, LoadingController } from '@ionic/angular';
@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private baseURL = 'http://paypark.saasmonks.com/api/user/';
  public startTime: any;
  public APIGlobeSetting: any = {};

  public endTime: any;
  public myParkingSlot: string;

  constructor(private http: HttpClient, public toastController: ToastController, public loadingController: LoadingController) { }

  public postWithAuth(endPoint: string, data: any) {
    return this.http.post(`${this.baseURL}${endPoint}`, data);
  }
  public getWithAuth(endPoint: string) {
    return this.http.get(`${this.baseURL}${endPoint}`);
  }
  async presentToast(msg) {
    const toast = await this.toastController.create({
      message: msg,
      duration: 2000
    });
    toast.present();
  }

  public authPostReq(endPoint: string, data: any) {
    const tok = 'Bearer ' + localStorage.getItem('token');
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', tok);
    headers = headers.set('Accept', 'application/json');
    return this.http.post(`${this.baseURL}${endPoint}`, data, { headers });
  }
  public authUpdateReq(endPoint: string, data: any) {
    // data._method = "PUT";
    const tok = 'Bearer ' + localStorage.getItem('token');
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', tok);
    headers = headers.set('Accept', 'application/json');
    return this.http.put(`${this.baseURL}${endPoint}`, data, { headers });
  }
  public authDeleteReq(endPoint: string) {
    // data._method = "PUT";
    const tok = 'Bearer ' + localStorage.getItem('token');
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', tok);
    headers = headers.set('Accept', 'application/json');
    return this.http.delete(`${this.baseURL}${endPoint}`, { headers });
  }
  public authGetReq(endPoint: string) {
    const tok = 'Bearer ' + localStorage.getItem('token');
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', tok);
    headers = headers.set('Accept', 'application/json');
    return this.http.get(`${this.baseURL}${endPoint}`, { headers });
  }
  public forgotPsw(data) {
    return this.http.post(this.baseURL + '/user/forgot', data);
  }
  async startLoader() {
    this.loadingController.create({
      duration: 10000,
      message: `Please Wait`,
    }).then(a => {
      a.present().then(() => {
      });
    });
  }
  async dismissLoader() {
    return await this.loadingController.dismiss().then(() => { });
  }
}
