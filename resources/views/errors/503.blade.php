<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PayPark - Licence de-activated!</title>
    <link rel="icon" href='{{asset('favicon.png')}}' type="image/png">
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link type="text/css" href="{{ asset('argon') }}/css/argon.css?v=1.0.0" rel="stylesheet">
    <style>
        @keyframes move_wave {
            0% {
                transform: translateX(0) translateZ(0) scaleY(1)
            }

            50% {
                transform: translateX(-25%) translateZ(0) scaleY(0.55)
            }

            100% {
                transform: translateX(-50%) translateZ(0) scaleY(1)
            }
        }

        .waveWrapper {
            overflow: hidden;
            position: absolute;
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            margin: auto;
        }

        .waveWrapperInner {
            position: absolute;
            width: 100%;
            overflow: hidden;
            height: 100%;
            bottom: -1px;
            background-image: linear-gradient(to top, #86377b 20%, #27273c 80%);
        }

        .bgTop {
            z-index: 15;
            opacity: 0.5;
        }

        .bgMiddle {
            z-index: 10;
            opacity: 0.75;
        }

        .bgBottom {
            z-index: 5;
        }

        .wave {
            position: absolute;
            left: 0;
            width: 200%;
            height: 100%;
            background-repeat: repeat no-repeat;
            background-position: 0 bottom;
            transform-origin: center bottom;
        }

        .waveTop {
            background-size: 50% 100px;
        }

        .waveAnimation .waveTop {
            animation: move-wave 3s;
            -webkit-animation: move-wave 3s;
            -webkit-animation-delay: 1s;
            animation-delay: 1s;
        }

        .waveMiddle {
            background-size: 50% 120px;
        }

        .waveAnimation .waveMiddle {
            animation: move_wave 10s linear infinite;
        }

        .waveBottom {
            background-size: 50% 100px;
        }

        .waveAnimation .waveBottom {
            animation: move_wave 15s linear infinite;
        }

        .form-group label {
            font-size: 21px;
            color: #fdfbff;
            margin-bottom: 4px;
        }

    </style>
</head>

<body>
    {{-- <div class="not-found-wrap text-center"> --}}
    <div style="position: absolute;
    top: 25%;
    z-index: 999999;
    right: 50%;margin-left: 35px">
        <form action="active" method="post">
            @csrf
            <h1 class="text-60" style="color: white">

                <i class="fas fa-skull-crossbones"></i>
            </h1>

            <p class="text-36 subheading mb-3" style="color: white">Licence de-activated!</p>
            <p class="mb-4  text-muted text-20">We think your licence is de-active, please active to continue.</p>
            <div class="form-group">
                <label for="usr"><b> Licence Number:</b></label>
                <input type="text" class="form-control" name="license_code" required>
            </div>
            <div class="form-group">
                <label for="pwd"><b> Name:</b></label>
                <input type="text" class="form-control" name="name" required>
            </div>
            <button type="submit" class="btn btn-lg btn-success">Active</button>
            <a href="https://support.saasmonks.in/" class="btn btn-lg btn-warning"> Contact
                Support</a>

            @if(session('status'))
            <p class="mb-4   text-20" style="color: #ffc107">{{session('status')}}</p>
            @endif
        </form>
    </div>
    {{-- </div> --}}
    <div class="waveWrapper waveAnimation">

        <div class="waveWrapperInner bgTop">
            <div class="wave waveTop"
                style="background-image: url('http://front-end-noobs.com/jecko/img/wave-top.png')">
            </div>
        </div>
        <div class="waveWrapperInner bgMiddle">
            <div class="wave waveMiddle"
                style="background-image: url('http://front-end-noobs.com/jecko/img/wave-mid.png')">
            </div>
        </div>
        <div class="waveWrapperInner bgBottom">
            <div class="wave waveBottom"
                style="background-image: url('http://front-end-noobs.com/jecko/img/wave-bot.png')">
            </div>
        </div>
    </div>
</body>

</html>
