@extends('layouts.app', ['title' => __('Plan')])

@section('content')
     @include('layouts.headers.header',
      array(
          'class'=>'warning',
          'title'=>"Users",'description'=>'',
          'icon'=>'fas fa-home',
          'breadcrumb'=>array([
            'text'=>'Plan'
],['text'=>'Add New'])))

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Plan') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('plan.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{ route('plan.store') }}" autocomplete="off" enctype="multipart/form-data">
                            @csrf
                            
                            <h6 class="heading-small text-muted mb-4">{{ __('Plan Detail') }}</h6>
                            <div class="pl-lg-4">
                                <div class="form-group{{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-name">{{ __('name') }}</label>
                                    <input type="text" name="name" id="input-name" class="form-control form-control-alternative{{ $errors->has('name') ? ' is-invalid' : '' }}" placeholder="{{ __('name') }}" value="{{ old('name') }}"  autofocus required>

                                    @if ($errors->has('name'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                               <div class="row">
                                   <div class="col-3">
                                        <div class="form-group{{ $errors->has('amount') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-amount">{{ __('amount') }}</label>
                                    <input type="text" name="amount" id="input-amount" class="form-control form-control-alternative{{ $errors->has('amount') ? ' is-invalid' : '' }}" placeholder="{{ __('amount') }}" value="{{ old('amount') }}"   required>

                                    @if ($errors->has('amount'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('amount') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                   </div>
                                   <div class="col-3">
                                     <div class="form-group{{ $errors->has('Interval Count') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-interval_count">{{ __('interval_count') }}</label>
                                    <input min="1" max="12" type="text" name="interval_count" id="input-interval_count" class="form-control form-control-alternative{{ $errors->has('interval_count') ? ' is-invalid' : '' }}" placeholder="{{ __('interval_count') }}" value="{{ old('interval_count') }}"  autofocus required>

                                    @if ($errors->has('interval_count'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('interval_count') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                   </div>
                                   <div class="col-6">
                                       <div class="form-group{{ $errors->has('interval') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-interval">{{ __('Interval') }}</label>

                                    <select name="interval" class="form-control form-control-alternative{{ $errors->has('interval') ? ' is-invalid' : '' }}" required>
                                        <option value='day'>Day</option>
                                        <option value='week'>Week</option>
                                        <option value='month'>Month</option>
                                        <option value='year'>Year</option>
                                    
                                    </select>

                                 

                                    @if ($errors->has('interval'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('interval') }}</strong>
                                        </span>
                                    @endif
                                </div>
                                      
                                   </div>
                               </div>
                              

                                <div class="text-center">
                                    <button type="submit" class="btn btn-success mt-4">{{ __('Save') }}</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        @include('layouts.footers.auth')
    </div>
@endsection