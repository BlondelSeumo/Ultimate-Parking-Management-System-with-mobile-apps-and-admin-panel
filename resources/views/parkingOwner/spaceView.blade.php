@extends('layouts.app', ['title' => __('Parking Owner')])

@section('content')
     @include('layouts.headers.header',
      array(
          'class'=>'danger',
          'title'=>"Parking Space",'description'=>'',
          'icon'=>'fas fa-home',
          'breadcrumb'=>array([
            'text'=>'Owner Space'
])))

<div class="container-fluid mt--7">
    <div class="row">
        <div class="col">
            <div class="card shadow">
                <div class="card-header border-0">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">{{ __('Parking Owner') }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            {{-- <a href="{{ route('vehicleType.create') }}" class="btn btn-sm
                            btn-primary">{{ __('Add Parking Owner') }}</a> --}}
                        </div>
                    </div>
                </div>

                <div class="col-12">
                    @if (session('status'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('status') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    @endif
                </div>

                <div class="table-responsive">
                    <table class="table align-items-center table-flush">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">{{ __('#') }}</th>
                                <th scope="col">{{ __('Name') }}</th>
                                <th scope="col">{{ __('Address') }}</th>
                                <th scope="col">{{ __('Price') }}</th>
                                <th scope="col">{{ __('Time') }}</th>
                                <th scope="col">{{ __('Offline Payment') }}</th>
                                <th scope="col">{{ __('Status') }}</th>
                                <th scope="col">{{ __('Verified') }}</th>

                                <th scope="col"></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($parkingSpace as $item)
                            <tr>
                                <td>{{ $loop->iteration}}</td>
                                <td>{{ $item->title }}</td>
                                <td>{{ $item->address }}</td>
                                <td>${{ $item->price_par_hour }}</td>
                                <td>
                                     @if ($item->available_all_day === 1)
                                     24/7  
                                    @else
                    {{ $item->open_time  }} To {{ $item->close_time  }}

                                    @endif
                                   
                                </td>
                                <td>
                                    <span
                                        class="badge badge-pill badge-{{$item->offline_payment === 0 ? 'warning' : 'success'}}">
                                        {{$item->offline_payment === 1 ? 'Yes':'No'}}
                                    </span>
                                </td>

                                <td>
                                    <span
                                        class="badge badge-pill badge-{{$item->status === 0 ? 'warning' : 'success'}}">
                                        {{$item->status === 1 ? 'Enable':'Disable'}}
                                    </span>

                                </td>
                                <td>
                                    @if ($item->verified === 1)
                                    <img src="{{ asset('argon')}}/img/brand/verifyd.png">
                                    @else
                                    <img src="{{ asset('argon')}}/img/brand/not-veriyd.png">
                                    @endif

                                </td>

                                <td class="text-right">
                                    <div class="dropdown">
                                        <a class="btn btn-sm btn-icon-only text-light" href="#" role="button"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">

                                            

                                      
                                            <a class="dropdown-item"
                                                href="{{ url('space/'.$item->id.'/verify') }}">
                                                  @if ($item->verified === 1)  
                                                  {{ __('Un Verified') }}
                                    @else
                                     {{ __('Verified') }}
                                    @endif
                                              
                                            </a>
                                            <a class="dropdown-item"
                                                href="{{ url('space/'.$item->id.'/view') }}">
                                               View
                                              
                                            </a>

                                        </div>
                                    </div>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="card-footer py-4">
                    <nav class="d-flex justify-content-end" aria-label="...">
                        {{ $parkingSpace->links() }}
                    </nav>
                </div>
            </div>
        </div>
    </div>

    @include('layouts.footers.auth')
</div>
@endsection
