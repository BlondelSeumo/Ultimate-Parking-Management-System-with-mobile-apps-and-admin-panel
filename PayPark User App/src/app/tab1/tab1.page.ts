import { Component } from '@angular/core';
import { ViewChild, ElementRef } from '@angular/core';
import { DrawerState } from 'ion-bottom-drawer';
import { ApiService } from './../service/api.service';
import { NavController } from '@ionic/angular';
declare var google: any;
import { Geolocation, Geoposition } from '@ionic-native/geolocation/ngx';
@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {
  @ViewChild('map', { static: true }) mapElement: ElementRef;

  map: any;
  icons: any = {};
  items: any;
  sort_data: any = {};
  shawTimer = false;
  isItemAvailable = false;
  arriving = true;
  drawerState = DrawerState.Bottom;
  minimumHeight: any = 0;
  dockedHeight: any = 160;
  shouldBounce: any = true;
  distanceTop: any = 219;
  search = '';
  space: Array<any> = [];
  lat = 22.3039;
  lng = 70.8022;

  constructor(
    private api: ApiService,
    private ntrl: NavController,
    private geolocation: Geolocation
  ) {
    //  this.timerTick()
  }
  timer: any = {
    remainingTime: 500,
    timeDisp: '0 : 0'
  };
  async ionViewDidEnter() {

    const endDate = new Date();
    endDate.setHours(new Date().getHours() + 2);
    const startDate = new Date();

    startDate.setMinutes(new Date().getMinutes() + 30);
    this.sort_data.end_date = endDate.toISOString();
    this.sort_data.start_date = startDate.toISOString();
    this.sort_data.end_dateMin = this.formatedEndDate(new Date());
    this.sort_data.start_dateMin = this.formatedEndDate(new Date());

    const styledMapType = new google.maps.StyledMapType(
      [
        {
          elementType: 'geometry',
          stylers: [
            {
              color: '#f5f5f5'
            }
          ]
        },
        {
          elementType: 'labels.icon',
          stylers: [
            {
              visibility: 'off'
            }
          ]
        },
        {
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#003165'
            }
          ]
        },
        {
          elementType: 'labels.text.stroke',
          stylers: [
            {
              color: '#f5f5f5'
            }
          ]
        },
        {
          featureType: 'administrative.land_parcel',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#bdbdbd'
            }
          ]
        },
        {
          featureType: 'poi',
          elementType: 'geometry',
          stylers: [
            {
              color: '#eeeeee'
            }
          ]
        },
        {
          featureType: 'poi',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#757575'
            }
          ]
        },
        {
          featureType: 'poi.park',
          elementType: 'geometry',
          stylers: [
            {
              color: '#e5e5e5'
            }
          ]
        },
        {
          featureType: 'poi.park',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#9e9e9e'
            }
          ]
        },
        {
          featureType: 'road',
          elementType: 'geometry',
          stylers: [
            {
              color: '#ffffff'
            }
          ]
        },
        {
          featureType: 'road.arterial',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#757575'
            }
          ]
        },
        {
          featureType: 'road.highway',
          elementType: 'geometry',
          stylers: [
            {
              color: '#dadada'
            }
          ]
        },
        {
          featureType: 'road.highway',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#616161'
            }
          ]
        },
        {
          featureType: 'road.local',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#9e9e9e'
            }
          ]
        },
        {
          featureType: 'transit.line',
          elementType: 'geometry',
          stylers: [
            {
              color: '#e5e5e5'
            }
          ]
        },
        {
          featureType: 'transit.station',
          elementType: 'geometry',
          stylers: [
            {
              color: '#eeeeee'
            }
          ]
        },
        {
          featureType: 'water',
          elementType: 'geometry',
          stylers: [
            {
              color: '#c9c9c9'
            }
          ]
        },
        {
          featureType: 'water',
          elementType: 'labels.text.fill',
          stylers: [
            {
              color: '#9e9e9e'
            }
          ]
        }
      ],
      { name: 'Styled Map' }
    );
    const mapoption = {
      center: new google.maps.LatLng(-33.86882, 151.20929),
      zoom: 15,
      streetViewControl: false,
      disableDefaultUI: true,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    this.map = new google.maps.Map(this.mapElement.nativeElement, mapoption);
    this.map.mapTypes.set('styled_map', styledMapType);
    this.map.setMapTypeId('styled_map');
    const caricon = {
      url: '../../../assets/image/map-img.png',
      labelOrigin: new google.maps.Point(25, 63),
      scaledSize: new google.maps.Size(20, 30)
    };

    const mapicon = {
      url: '../../../assets/image/blue-map-img.png',
      labelOrigin: new google.maps.Point(25, 63),
      scaledSize: new google.maps.Size(20, 30)
    };
    // my location

    // end location

    // parking space
    let geo: Geoposition;
    try {
      geo = await this.geolocation.getCurrentPosition({
        maximumAge: 1000,
        timeout: 1000,
        enableHighAccuracy: true
      });
    } catch (error) {
      console.error('error', error);
    }

    console.log('geo', geo)
    if (geo) {
      this.lat = geo.coords.latitude;
      this.lng = geo.coords.longitude;
    } else {
      this.api.presentToast('Please Turn your location')
    }

    const latLng = {
      lat: this.lat,
      lng: this.lng
    };
    const marker = new google.maps.Marker({
      map: this.map,
      animation: google.maps.Animation.DROP,
      position: new google.maps.LatLng(this.lat, this.lng),
      icon: mapicon,
      title: 'Uluru (Ayers Rock)'
    });
    const contentString =
      '<div id="content">' + '<p>You are here</p>' + '</div>';
    this.api.startLoader();
    this.api.postWithAuth('space', latLng).subscribe(
      (res: any) => {
        console.log('res', res);
        this.space = res.data;
        for (let index = 0; index < res.data.length; index++) {
          const element = this.space[index];
          const firstMarker = new google.maps.Marker({
            map: this.map,
            animation: google.maps.Animation.DROP,
            position: new google.maps.LatLng(element.lat, element.lng),
            icon: caricon
          });
          const spaceInfo =
            '<div class="simple">' +
            '<p>$' +
            element.price_par_hour +
            '/hour</p>' +
            '</div>';
          const markerInfo = new google.maps.InfoWindow({
            content: spaceInfo
          });
          markerInfo.open(this.map, firstMarker);
          firstMarker.addListener('click', () => {
            console.log('index', index);
            // this.drawerState = DrawerState.Docked;
            this.filterArray(element.id);
          });
        }
        const infowindow = new google.maps.InfoWindow({
          content: contentString
        });
        infowindow.open(this.map, marker);

        marker.addListener('click', () => {
          console.log('der');

          // infowindow.open(this.map, marker);
        });
        this.api.dismissLoader();
      },
      error => {
        console.error('error', error);
        this.api.dismissLoader();
      }
    );

    // end space

  }
  async ngOnInit() {

  }

  initializeItems() {
    this.items = [
      {
        place: 'Malmesbury',
        adress: 'Eastcourt Farm SN16 9RZ'
      },
      {
        place: 'Bradford',
        adress: '1352 Leeds Road BD3 8ND'
      },
      {
        place: 'Colchester',
        adress: '6 Griggs Business Centre West Street'
      }
    ];
  }
  getItems(ev: any) {
    this.initializeItems();
    this.shawTimer = false;
    this.isItemAvailable = true;
    // set val to the value of the searchbar
    const val = ev.target.value;
    this.arriving = true;
    // if the value is an empty string don't filter the items
    //   if (val && val.trim() != '') {
    //     this.isItemAvailable = true;
    //     this.items = this.items.filter((item) => {

    //       return (item.toLowerCase().indexOf(val.toLowerCase()) > -1);

    //     })
    // console.log(this.items);

    //   }
  }
  timerTick() {
    setTimeout(() => {
      this.timer.remainingTime--;
      const h = Math.floor(this.timer.remainingTime / 3600);
      const m = Math.floor((this.timer.remainingTime % 3600) / 60);
      const s = Math.floor((this.timer.remainingTime % 3600) % 60);
      const hDisplay = ('0' + h).slice(-2);
      const mDisplay = ('0' + m).slice(-2);
      const sDisplay = ('0' + s).slice(-2);
      this.timer.timeDisp = hDisplay + ' : ' + mDisplay + ' : ' + sDisplay;
      if (this.timer.remainingTime != 0) {
        this.timerTick();
      }
    }, 1000);
  }
  dateChanged() {
    if (this.sort_data.start_date) {
      this.sort_data.end_dateMin = this.formatedEndDate(new Date(this.sort_data.start_date));
    }
  }

  viewAll() {
    this.drawerState = DrawerState.Top;
  }

  filterArray(id) {
    let temp = {};
    this.space = this.space.filter(item => {
      if (item.id === id) {
        temp = item;
        return false;
      }
      return true;
    });
    this.space.push(temp);
    this.drawerState = DrawerState.Docked;

    console.log('temp', temp);
    console.log('this.space', this.space);
  }

  bookMyParking(id) {

    if (this.sort_data.start_date && this.sort_data.end_date) {
      this.api.startTime = new Date(this.sort_data.start_date);
      this.api.endTime = new Date(this.sort_data.end_date);
      if (new Date() < this.api.startTime && this.api.startTime < this.api.endTime) {
        this.ntrl.navigateForward('parking-detail/' + id);
      } else {
        this.api.presentToast('Please Select Start and End Time In Valid Formate');
      }

    } else {
      this.api.presentToast('Please Select Start and End Time');
    }
  }
  formatedEndDate(date: Date) {
    const formatedMonth = date.getMonth() + 1 > 9 ? date.getMonth() + 1 : '0' + (date.getMonth() + 1);
    const formatedDate = date.getDay() + 1 > 9 ? date.getDay() + 1 : '0' + (date.getDay() + 1);
    const formatCol = date.getFullYear() + '-' + formatedMonth + '-' + formatedDate;
    console.log('formatCol', formatCol);
    return formatCol;
  }
}
