<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('unc/{cert_no}', 'CertificateController@forApi');
Route::get('unc/enroll/{reg_no}', 'StudentController@forApi');
