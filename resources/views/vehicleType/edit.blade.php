@extends('layouts.app', ['title' => __('Vehicle Type')])

@section('content')
    @include('layouts.headers.header', ['title' => __('Edit Vehicle Type')])   

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Vehicle Type') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('vehicleType.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{ route('vehicleType.update', $vehicleType) }}" autocomplete="off" enctype="multipart/form-data">
                            @csrf
                            @method('put')

                            <h6 class="heading-small text-muted mb-4">{{ __('Vehicle Type Detail') }}</h6>
                            <div class="pl-lg-4">
                               
                                <div class="form-group{{ $errors->has('title') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-name">{{ __('Title') }}</label>
                                    <input type="text" name="title" id="input-name" class="form-control form-control-alternative{{ $errors->has('title') ? ' is-invalid' : '' }}" placeholder="{{ __('Title') }}" value="{{ old('title',$vehicleType->title) }}"  autofocus required>

                                    @if ($errors->has('title'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('title') }}</strong>
                                        </span>
                                    @endif
                                </div>
                              
                                
<div class="form-group{{ $errors->has('status') ? ' has-danger' : '' }}">
                                <label class="form-control-label" for="input-status">{{ __('Status') }}</label>

                                <select name="status"
                                    class="form-control form-control-alternative{{ $errors->has('status') ? ' is-invalid' : '' }}"
                                    required>
                                    <option value=1 {{old('status',$vehicleType->status)==1 ? 'selected' : ''}}>Enable</option>
                                    <option value=0 {{old('status',$vehicleType->status)==0 ? 'selected' : ''}}>Disable</option>
                                </select>



                                @if ($errors->has('status'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('status') }}</strong>
                                </span>
                                @endif
                            </div>
                             <div class="form-group{{ $errors->has('image') ? ' has-danger' : '' }}">
                                <label class="form-control-label" for="input-status">{{ __('Image') }}</label>

                                <input type="file" name="image"
                                    class="form-control form-control-alternative{{ $errors->has('image') ? ' is-invalid' : '' }}"
                                    >




                                @if ($errors->has('image'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('image') }}</strong>
                                </span>
                                @endif
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