@extends('layouts.app', ['title' => __('Parking Owner')])

@section('content')
     @include('layouts.headers.header',
      array(
          'class'=>'danger',
          'title'=>"Parking Space",'description'=>'',
          'icon'=>'fas fa-home',
          'breadcrumb'=>array([
            'text'=>'Owner Space'
],[ 'text'=>'Space Detail'])))
    <style>
    .active{
        color: goldenrod
    }
    </style>
<div class="container-fluid mt--7">

    <div class="row">
        <div class="col-12">
            <div class="card form-card shadow" style="border:none;">
                <div class="card-top-header"
                    style="height: 200px;background-image: url({{url('images/upload/'.$data->image)}});">
                </div>
                <div class="card-body shop-detail">
                    <div class="row">
                        <div class="col-6">
                            <h2 class="m-0">{{$data->title}}</h2>
                            <p class="m-0">{{$data->description}}</p>
                            <br>
                            <p class="m-0">{{$data->address}}</p>


                            <p class="m-0">{{$data->phone_number}}</p>
                            <br>
                            <p class="m-0">${{$data->price_par_hour}}</p>


                            {{-- <input type="hidden" id="latitude" value="{{$data->latitude}}" name="latitude">
                            <input type="hidden" id="longitude" value="{{$data->longitude}}" name="longitude">
                            <input type="hidden" id="shop_name" value="{{$data->name}}" name="shop_name"> --}}

                        </div>
                        <div class="col-6 text-right">
                            <div class="rating">
                                @for ($i =1 ; $i <= 5; $i++) <i class="fas fa-star
                                {{$i <= $data->avg_rating ? 'active' : '' }} "></i>
                                    @endfor
                            </div>
                            <span class="badge rate-label mt-1" style="font-size: 20px">
                              <b> {{$data->avg_rating}}</b> 
                            </span>

                        </div>
                        <div class="col-12">
                            <hr class="mt-2 mb-1">
                        </div>
                        <div class="col-12 row shop-data">
                          
                            <div class="col-3 br-1 pl-4">
                                <h4>Time</h4>
                                <p> @if ($data->available_all_day === 1)
                                    24/7
                                    @else
                                    {{ $data->open_time  }} To {{ $data->close_time  }}
                                    @endif

                                </p>
                            </div>
                              <div class="col-3 br-1 pl-4">
                                <h4>Offline Payment</h4>
                                <p>
                                    <span
                                        class="badge badge-pill badge-{{$data->offline_payment === 0 ? 'warning' : 'success'}}">
                                        {{$data->offline_payment === 1 ? 'Yes':'No'}}
                                    </span>
                                </p>
                            </div>
                            <div class="col-3 br-1 pl-4">
                                <h4>Verified</h4>
                                <p><span
                                        class="badge badge-pill badge-{{$data->verified === 0 ? 'warning' : 'success'}}">
                                        {{$data->verified === 1 ? 'Yes':'No'}}
                                    </span> </p>
                            </div>
                            <div class="col-3 pl-4">
                                <h4>Status</h4>
                                <p><span class="badge badge-pill badge-{{$data->status === 0 ? 'warning' : 'success'}}">
                                        {{$data->status === 1 ? 'Enable':'Disabled'}}
                                    </span> </p>
                            </div>
                        </div>
                        <div class="col-12">
                            <hr class="mt-1 mb-2">
                        </div>
                        <div class="col-12 shop-bottom">
                            <h3 class="mt-4"> Facilities</h3>
                            <div class="row">

                                @forelse ($data['facilitiesData'] as $item)
                                <div class="col-1 text-center">

                                    <img src="{{ asset('upload')}}/{{$item->image }}" class="rounded-circle" height="50"
                                        width="50">
                                    <br>
                                    <div>
                                        <h4>

                                            {{ $item->title }}
                                        </h4>
                                    </div>
                                </div>
                                @empty
                                <p>No Facilities</p>
                                @endforelse
                            </div>

                        </div>
                         <div class="col-12">
                        <h3 class="mt-4 mb-4">Guard:</h3>
                          <div class="row">

                                @forelse ($data['guards'] as $item)
                                <div class="col-1 text-center">

                                    <img src="{{ asset('upload')}}/{{$item->image }}" class="rounded-circle" height="50"
                                        width="50">
                                    <br>
                                    <div>
                                        <h4>

                                            {{ $item->name }}
                                        </h4>
                                    </div>
                                </div>
                                @empty
                                <p>No Guard</p>
                                @endforelse
                            </div>
                         </div>
                         <div class="col-12 shop-bottom">
                            <h3 class="mt-4"> Review</h3>
                            <div class="row">

                                @forelse ($data['reviews'] as $item)
                                <div class="col-8 " style="display: inline-flex;margin-bottom: 8px">

                                    <img src="{{ asset('upload')}}/{{$item->user->image }}" class="rounded-circle" height="50"
                                        width="50">

                                    <div style="padding-left: 16px">
                                        <h4 >
                                            {{$item->user->name }}
                                            <br>
                                             
                                        </h4>
                                       <h5>
                                            {{$item->description}}
                                       </h5>
                                   
                                    </div>
                                </div>
                                <div class="col-4 text-right" style="font-size: smaller">
                                     @for ($i =1 ; $i <= 5; $i++) <i class="fas fa-star
                                {{$i <= $item->star ? 'active' : '' }} "></i>
                                    @endfor
                                </div>
                                @empty
                                <p>No Review</p>
                                @endforelse
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

@include('layouts.footers.auth')
</div>
@endsection
