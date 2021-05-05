<?php

Auth::routes();
Route::get('/', function () {return redirect('login');});
Route::get('/home', 'HomeController@index')->name('home');

Route::get('profile', 'UserController@profile')->middleware('auth');
Route::post('profile', 'UserController@profileUpdate')->middleware('auth');
Route::get('change-password', 'UserController@changePassword')->middleware('auth');
Route::post('change-password', 'UserController@changePasswordUpdate')->middleware('auth');

Route::get('/students','StudentController@index')->middleware('auth');
Route::get('/certificates','CertificateController@index')->middleware('auth');
Route::get('/programs','ProgramController@index')->middleware('auth');
Route::get('/course-provider','CourseProviderController@index')->middleware('auth');

