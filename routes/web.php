<?php

Auth::routes();
Route::get('/', function () {return redirect('login');});
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/students','StudentController@index');
Route::get('/certificates','CertificateController@index');
Route::get('/programs','ProgramController@index');
Route::get('/course-provider','CourseProviderController@index');
