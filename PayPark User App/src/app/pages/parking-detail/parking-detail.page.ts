import { Component, OnInit } from '@angular/core';
import { ApiService } from './../../service/api.service';
import { ActivatedRoute } from '@angular/router';
import { NavController } from '@ionic/angular';
import { Geolocation } from '@ionic-native/geolocation/ngx';

@Component({
  selector: 'app-parking-detail',
  templateUrl: './parking-detail.page.html',
  styleUrls: ['./parking-detail.page.scss'],
})
export class ParkingDetailPage implements OnInit {
  category: any = 'information';
  data: any = {
    arriving: 'Nov 1, 10:00AM',
    leaving: 'Nov 1, 01:00PM',
    parking: {
      icon: 'assets/icon-image/pin-blue.svg',
      name: 'Chris Sullivan Parking',
      location: '190 High St East, Rawa Bharat,UK',
      destination: '04 Km',
      msg: 'You can also choose multiple booking',
      rate: '4',
      view: '112',
      text: 'to destination',
      car: 'assets/icon-image/car-blue.svg'
    },
    info: {
      detail: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloremque aut esse  facilis vitae nam enim consectetur doloribus dolorum velit, alias quidem possimus repellat perspiciatis quod blanditiis nostrum amet neque alias quidem possimus repellat perspiciatis quaerat.',
      image: 'assets/image/parking.png',
      text: 'Parking View',
      icon_img: 'assets/icon-image/street-view.svg',
      facality: [
        {
          icon: 'assets/image/cctv.png',
          servie: 'cctv camera'
        },
        {
          icon: 'assets/image/24-open.png',
          servie: '24h open'
        },
        {
          icon: 'assets/image/car-service.png',
          servie: 'car service'
        },
        {
          icon: 'assets/image/floor-park.png',
          servie: 'floor parking'
        }
      ]

    },
    review: [
      {
        name: 'Kathy Foster',
        rate: '4',
        about: 'Proin ac quam et vestibulum blandit. Nunc maximus nibh at placerat tincidunt. Nam sem.',
        image: 'assets/image/kathy.png'
      },
      {
        name: 'Adam Gomez',
        rate: '4',
        about: 'Proin ac quam et vestibulum blandit. Nunc maximus nibh at placerat tincidunt. Nam sem.',
        image: 'assets/image/adam.png'
      },
      {
        name: 'Danielle Jackson',
        rate: '4',
        about: 'Proin ac quam et vestibulum blandit. Nunc maximus nibh at placerat tincidunt. Nam sem.',
        image: 'assets/image/jackson.png'
      }
    ]

  };
  spaceData: any = {

  };
  id: string;
  startTime: any;
  endTime: any;
  hours: number;
  slideOpts = {
    initialSlide: 1,
    speed: 400
  };
  constructor(private api: ApiService, public activeRoute: ActivatedRoute, private ntrl: NavController, private geolocation: Geolocation

  ) {
    this.api.startLoader();

  }

  async ngOnInit() {
    let data;
    try {
      data = await this.geolocation.getCurrentPosition(
        {
          maximumAge: 1000, timeout: 1000,
          enableHighAccuracy: true
        }
      );

    } catch (error) {
      console.error('error', error)

    }

    this.id = this.activeRoute.snapshot.paramMap.get('id');
    this.startTime = this.api.startTime || new Date()
    this.endTime = this.api.endTime || new Date()
    this.hours = Math.abs(this.startTime - this.endTime) / 36e5;
    console.log(' this.hours', this.hours)
    this.hours = Math.round(this.hours);
    let latLng = {
      lat: 22.3039,
      lng: 70.8022
    };
    if (data) {
      latLng = {
        lat: data.coords.latitude,
        lng: data.coords.longitude
      };
    } else {
      this.api.presentToast('Please Turn your location')
    }

    this.api.postWithAuth(`space/${this.id}`, latLng).subscribe((res: any) => {
      console.log('res', res);
      this.spaceData = res.data;
      this.api.dismissLoader();

    }, err => {
      console.error('err', err);
      this.api.dismissLoader();

    });

  }

  bookingNavigation() {
    this.ntrl.navigateForward('space-slot/' + this.spaceData.id);
  }

}
