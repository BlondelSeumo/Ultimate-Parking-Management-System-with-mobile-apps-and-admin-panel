import { Injectable } from '@angular/core';

import { ToastController, LoadingController } from '@ionic/angular';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import {  ENDPOINT_URL } from '../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private baseURL = ENDPOINT_URL;
  public startTime: any;

  public endTime: any;
  public myParkingSlot: string;
  loading: HTMLIonLoadingElement;
  type: string | number;

  constructor(
    private http: HttpClient,
    public toastController: ToastController,
    public loadingController: LoadingController
  ) {
    this.type = localStorage.getItem('userType') || 'owner' + '/';
    console.log(' this.baseURL ', this.baseURL);
  }
  async startLoader() {
    this.loadingController
      .create({
        duration: 10000,
        message: `Please Wait`
      })
      .then(a => {
        a.present().then(() => {});
      });
  }
  async dismissLoader() {
    return await this.loadingController.dismiss().then(() => {});
  }
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
  public authPostReqImageUpoad(endPoint: string, data: any) {
    const tok = 'Bearer ' + localStorage.getItem('token');
    let headers = new HttpHeaders();
    headers = headers.set('Authorization', tok);
    headers = headers.set('Content-Type', 'multipart/form-data');
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
  public generateURL() {
    this.baseURL = ENDPOINT_URL;
    this.type = localStorage.getItem('userType') || 'owner';
    this.baseURL += this.type + '/';
  }

  public forgotPsw(data) {
    return this.http.post(ENDPOINT_URL + '/owner/forgot', data);
  }
}
