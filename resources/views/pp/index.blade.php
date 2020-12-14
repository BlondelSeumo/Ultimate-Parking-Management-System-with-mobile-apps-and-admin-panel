@extends('layouts.app', ['title' => __('Privacy And Policy')])
@section('content')
      @include('layouts.headers.header',
      array(
          'class'=>'primary',
          'title'=>"Privacy and Policy",'description'=>'',
          'icon'=>'fas fa-home',
          'breadcrumb'=>array([
           
            'text'=>'Privacy and Policy'
        ])))

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12 order-xl-1">
                 
                  <form method="post" autocomplete="off" action="{{ route('pp.update',$pp) }}">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Privacy and Policy') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <button type="submit"  class="btn btn-sm btn-primary">{{ __('Update') }}</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                      
                            @csrf
                            @method('PUT')
                           
                            <div class="pl-lg-4">
                               
               
                
                            <div class="form-group{{ $errors->has('description') ? ' has-danger' : '' }}" >
                          

                                <textarea id="textEditor" name="pp"
                                    class="form-control form-control-alternative{{ $errors->has('description') ? ' is-invalid' : '' }}"
                                    rows="3"
                            placeholder="Write a Privacy and Policy ...">{{$pp->pp}}</textarea>

                                @if ($errors->has('description'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('description') }}</strong>
                                </span>
                                @endif
                            </div>

                             
                            </div>
                      
                    </div>
                </div>
            </form>
            </div>
        </div>
        
        @include('layouts.footers.auth')
    </div>
@endsection