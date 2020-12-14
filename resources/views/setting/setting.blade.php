@extends('layouts.app', ['title' => __('Privacy And Policy')])
@section('content')
@include('layouts.headers.header',
array(
'class'=>'success',
'title'=>"Settings",'description'=>'',
'icon'=>'fas fa-home',
'breadcrumb'=>array([

'text'=>'Setting'
])))

<div class="container-fluid mt--7">
    <div class="row">
        <div class="col-xl-12 order-xl-1">
            {{-- <form method="post" action="{{ route('PP.update',$PP) }}" autocomplete="off"> --}}
            <div class="card bg-secondary shadow">
                <div class="card-header bg-white border-0">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">{{ __('Configuration Detail') }}</h3>
                        </div>
                        <div class="col-4 text-right">

                        </div>
                    </div>
                </div>
                <div class="col-12">
                    {{-- {{dd($beaches)}} --}}
                    @if (session('status'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('status') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    @endif
                </div>
                <div class="card-body">


                    <div class="pl-lg-4">



                        <div class="nav-wrapper">
                            <ul class="nav nav-pills nav-fill flex-column flex-md-row" id="tabs-icons-text"
                                role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link mb-sm-3 mb-md-0 active" id="tabs-icons-text-1-tab"
                                        data-toggle="tab" href="#tabs-icons-text-1" role="tab"
                                        aria-controls="tabs-icons-text-1" aria-selected="true"><i
                                            class="ni ni-email-83 mr-2"></i>Email</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-2-tab" data-toggle="tab"
                                        href="#tabs-icons-text-2" role="tab" aria-controls="tabs-icons-text-2"
                                        aria-selected="false"><i class="ni ni-credit-card mr-2"></i>Stripe</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-3-tab" data-toggle="tab"
                                        href="#tabs-icons-text-3" role="tab" aria-controls="tabs-icons-text-3"
                                        aria-selected="false"><i class="ni ni-bell-55 mr-2"></i>Notification</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link mb-sm-3 mb-md-0" id="tabs-icons-text-4-tab" data-toggle="tab"
                                        href="#tabs-icons-text-4" role="tab" aria-controls="tabs-icons-text-4"
                                        aria-selected="false"><i class="ni ni-send mr-2"></i>TWILIO</a>
                                </li>
                            </ul>
                        </div>
                        <div class="card shadow">
                            <div class="card-body">
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="tabs-icons-text-1" role="tabpanel"
                                        aria-labelledby="tabs-icons-text-1-tab">
                                        <form method="post" action="{{ route('setting.email') }}" autocomplete="off"
                                            enctype="multipart/form-data">
                                            @csrf
                                            @method('put')

                                            <h6 class="heading-small text-muted mb-4">{{ __('Email Configuration') }}
                                            </h6>
                                            <div class="pl-lg-4">
                                                <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_USERNAME') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_USERNAME') }}</label>
                                                            <input type="text" name="MAIL_USERNAME" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('MAIL_USERNAME') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_USERNAME') }}"
                                                                value="{{ old('MAIL_USERNAME',$emailData['MAIL_USERNAME']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_USERNAME'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_USERNAME') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_PASSWORD') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_PASSWORD') }}</label>
                                                            <input type="text" name="MAIL_PASSWORD" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('MAIL_PASSWORD') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_PASSWORD') }}"
                                                                value="{{ old('MAIL_PASSWORD',$emailData['MAIL_PASSWORD']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_PASSWORD'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_PASSWORD') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_DRIVER') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_DRIVER') }}</label>
                                                            <input type="text" name="MAIL_DRIVER" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('MAIL_DRIVER') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_DRIVER') }}"
                                                                value="{{ old('MAIL_DRIVER',$emailData['MAIL_DRIVER']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_DRIVER'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_DRIVER') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_HOST') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_HOST') }}</label>
                                                            <input type="text" name="MAIL_HOST" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('MAIL_HOST') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_HOST') }}"
                                                                value="{{ old('MAIL_HOST',$emailData['MAIL_HOST']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_HOST'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_HOST') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_PORT') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_PORT') }}</label>
                                                            <input type="text" name="MAIL_PORT" id="input-name"
                                                                class="form-control form-control-alternative{{ $errors->has('name') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_PORT') }}"
                                                                value="{{ old('MAIL_PORT',$emailData['MAIL_PORT']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_PORT'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_PORT') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('MAIL_ENCRYPTION') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('MAIL_ENCRYPTION') }}</label>
                                                            <input type="text" name="MAIL_ENCRYPTION" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('MAIL_ENCRYPTION') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('MAIL_ENCRYPTION') }}"
                                                                value="{{ old('MAIL_ENCRYPTION',$emailData['MAIL_ENCRYPTION']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('MAIL_ENCRYPTION'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('MAIL_ENCRYPTION') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="text-center">
                                                    <button type="submit"
                                                        class="btn btn-success mt-4">{{ __('Save') }}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="tabs-icons-text-2" role="tabpanel"
                                        aria-labelledby="tabs-icons-text-2-tab">
                                        <form method="post" action="{{ route('setting.stripe') }}" autocomplete="off"
                                            enctype="multipart/form-data">
                                            @csrf
                                            @method('put')

                                            <h6 class="heading-small text-muted mb-4">{{ __('Stripe Configuration') }}
                                            </h6>
                                            <div class="pl-lg-4">
                                                <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('STRIPE_SECRET') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('STRIPE_SECRET') }}</label>
                                                            <input type="text" name="STRIPE_SECRET" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('STRIPE_SECRET') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('STRIPE_SECRET') }}"
                                                                value="{{ old('STRIPE_SECRET',$emailData['STRIPE_SECRET']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('STRIPE_SECRET'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('STRIPE_SECRET') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('STRIPE_KEY') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('STRIPE_KEY') }}</label>
                                                            <input type="text" name="STRIPE_KEY" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('STRIPE_KEY') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('STRIPE_KEY') }}"
                                                                value="{{ old('STRIPE_KEY',$emailData['STRIPE_KEY']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('STRIPE_KEY'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('STRIPE_KEY') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="text-center">
                                                    <button type="submit"
                                                        class="btn btn-success mt-4">{{ __('Save') }}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="tabs-icons-text-3" role="tabpanel"
                                        aria-labelledby="tabs-icons-text-3-tab">
                                        <form method="post" action="{{ route('setting.notification') }}"
                                            autocomplete="off" enctype="multipart/form-data">
                                            @csrf
                                            @method('put')

                                            <h6 class="heading-small text-muted mb-4">
                                                {{ __('OneSignal Configuration') }}
                                            </h6>
                                            <div class="pl-lg-4">
                                                <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('APP_ID') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('APP_ID') }}</label>
                                                            <input type="text" name="APP_ID" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('APP_ID') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('APP_ID') }}"
                                                                value="{{ old('APP_ID',$emailData['APP_ID']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('APP_ID'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('APP_ID') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">

                                                        <div
                                                            class="form-group{{ $errors->has('REST_API_KEY') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('REST_API_KEY') }}</label>
                                                            <input type="text" name="REST_API_KEY" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('REST_API_KEY') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('REST_API_KEY') }}"
                                                                value="{{ old('REST_API_KEY',$emailData['REST_API_KEY']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('REST_API_KEY'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('REST_API_KEY') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('USER_AUTH_KEY') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('USER_AUTH_KEY') }}</label>
                                                            <input type="text" name="USER_AUTH_KEY" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('USER_AUTH_KEY') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('USER_AUTH_KEY') }}"
                                                                value="{{ old('USER_AUTH_KEY',$emailData['USER_AUTH_KEY']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('USER_AUTH_KEY'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('APP_ID') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                          <div
                                                            class="form-group{{ $errors->has('PROJECT_NUMBER') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('PROJECT_NUMBER') }}</label>
                                                            <input type="text" name="PROJECT_NUMBER" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('PROJECT_NUMBER') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('PROJECT_NUMBER') }}"
                                                                value="{{ old('PROJECT_NUMBER',$emailData['PROJECT_NUMBER']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('PROJECT_NUMBER'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('PROJECT_NUMBER') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
 <div class="row" >
                                                            <div class="col-2"> <label
                                                                    class="form-control-label">{{ __('Push Notification') }}?</label>
                                                            </div>
                                                            <div class="col-10">
                                                                <label class="custom-toggle">
                                                                    <input type="checkbox" value="1" name="push"
                                                                        id="push" checked>
                                                                    <span class="custom-toggle-slider rounded-circle"
                                                                        data-label-off="No" data-label-on="Yes"></span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                <div class="text-center">
                                                    <button type="submit"
                                                        class="btn btn-success mt-4">{{ __('Save') }}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="tabs-icons-text-4" role="tabpanel"
                                        aria-labelledby="tabs-icons-text-4-tab">
                                        <form method="post" action="{{ route('setting.twilio') }}"
                                            autocomplete="off" enctype="multipart/form-data">
                                            @csrf
                                            @method('put')

                                            <h6 class="heading-small text-muted mb-4">
                                                {{ __('TWILIO Configuration') }}
                                            </h6>
                                            <div class="pl-lg-4">
                                             

                                                <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('TWILIO_SID') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('TWILIO_SID') }}</label>
                                                            <input type="text" name="TWILIO_SID" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('TWILIO_SID') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('TWILIO_SID') }}"
                                                                value="{{ old('TWILIO_SID',$emailData['TWILIO_SID']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('TWILIO_SID'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('TWILIO_SID') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('TWILIO_AUTH_TOKEN') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('TWILIO_AUTH_TOKEN') }}</label>
                                                            <input type="text" name="TWILIO_AUTH_TOKEN" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('TWILIO_AUTH_TOKEN') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('TWILIO_AUTH_TOKEN') }}"
                                                                value="{{ old('TWILIO_AUTH_TOKEN',$emailData['TWILIO_AUTH_TOKEN']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('TWILIO_AUTH_TOKEN'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('TWILIO_AUTH_TOKEN') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                                   <div class="row">

                                                    <div class="col-6">
                                                        <div
                                                            class="form-group{{ $errors->has('TWILIO_NUMBER') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('TWILIO_NUMBER') }}</label>
                                                            <input type="text" name="TWILIO_NUMBER" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('TWILIO_NUMBER') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('TWILIO_NUMBER') }}"
                                                                value="{{ old('TWILIO_NUMBER',$emailData['TWILIO_NUMBER']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('TWILIO_NUMBER'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('TWILIO_NUMBER') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                    <div class="col-6">

                                                        <div
                                                            class="form-group{{ $errors->has('country_code') ? ' has-danger' : '' }}">
                                                            <label class="form-control-label"
                                                                for="input-name">{{ __('COUNTRY_CODE') }}</label>
                                                            <input type="text" name="country_code" id="input-name"
                                                                class="form-control
                                                                form-control-alternative{{ $errors->has('country_code') ? ' is-invalid' : '' }}"
                                                                placeholder="{{ __('country_code') }}"
                                                                value="{{ old('country_code',$emailData['country_code']) }}"
                                                                autofocus required>

                                                            @if ($errors->has('country_code'))
                                                            <span class="invalid-feedback" role="alert">
                                                                <strong>{{ $errors->first('country_code') }}</strong>
                                                            </span>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="row" style="margin-top:35px">
                                                            <div class="col-6"> <label
                                                                    class="form-control-label">{{ __('SMS OTP Verification') }}?</label>
                                                            </div>
                                                            <div class="col-6">
                                                                <label class="custom-toggle">
                                                                    <input type="checkbox" value="1" name="verification"
                                                                        id="verification" {{$emailData['verification'] == '1' ? 'checked' : ''}}>
                                                                    <span class="custom-toggle-slider rounded-circle"
                                                                        data-label-off="No" data-label-on="Yes"></span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="text-center">
                                                    <button type="submit"
                                                        class="btn btn-success mt-4">{{ __('Save') }}</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>

                </div>
            </div>
            {{-- </form> --}}
        </div>
    </div>

    @include('layouts.footers.auth')
</div>
@endsection