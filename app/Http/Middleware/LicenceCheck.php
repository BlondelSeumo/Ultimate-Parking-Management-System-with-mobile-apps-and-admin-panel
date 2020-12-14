<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Artisan;
use LicenseBoxAPI;

class LicenceCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        /*
        $api = new LicenseBoxAPI();
        if (class_exists('LicenseBoxAPI')) {
            $res = $api->verify_license();
            if ($res['status'] !== true) {
                Artisan::call('down');
                abort(503);
            }
            return $next($request);
        } else {
            Artisan::call('down');
        }
        */
        return $next($request);
    }
}
