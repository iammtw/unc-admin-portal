<?php

Auth::routes();
Route::get('/', function () {return redirect('login');});
Route::get('/home', 'HomeController@index')->name('home');

Route::get('profile', 'UserController@profile')->middleware('auth');
Route::post('profile', 'UserController@profileUpdate')->middleware('auth');
Route::get('change-password', 'UserController@changePassword')->middleware('auth');
Route::post('change-password', 'UserController@changePasswordUpdate')->middleware('auth');

Route::get('/students','StudentController@index')->middleware('auth');
Route::get('/students/add','StudentController@add')->middleware('auth');
Route::post('/students/add','StudentController@insert')->middleware('auth');
Route::get('/students/{id}/view','StudentController@view')->middleware('auth');
Route::get('/students/{id}/edit','StudentController@edit')->middleware('auth');
Route::post('/students/{id}/edit','StudentController@editInsert')->middleware('auth');
Route::get('/students/{id}/delete','StudentController@delete')->middleware('auth');

Route::get('/certificates','CertificateController@index')->middleware('auth');
Route::get('/certificates/add','CertificateController@add')->middleware('auth');
Route::post('/certificates/add','CertificateController@insert')->middleware('auth');
Route::get('/certificates/{id}/view','CertificateController@view')->middleware('auth');
Route::get('/certificates/{id}/edit','CertificateController@edit')->middleware('auth');
Route::post('/certificates/{id}/edit','CertificateController@editInsert')->middleware('auth');
Route::get('/certificates/{id}/delete','CertificateController@delete')->middleware('auth');

Route::get('/programs','ProgramController@index')->middleware('auth');
Route::get('/programs/add','ProgramController@add')->middleware('auth');
Route::post('/programs/add','ProgramController@insert')->middleware('auth');
Route::get('/programs/{id}/view','ProgramController@view')->middleware('auth');
Route::get('/programs/{id}/edit','ProgramController@edit')->middleware('auth');
Route::post('/programs/{id}/edit','ProgramController@editInsert')->middleware('auth');
Route::get('/programs/{id}/delete','ProgramController@delete')->middleware('auth');

Route::get('/course-provider','CourseProviderController@index')->middleware('auth');
Route::get('/course-provider/add','CourseProviderController@add')->middleware('auth');
Route::post('/course-provider/add','CourseProviderController@insert')->middleware('auth');
Route::get('/course-provider/{id}/view','CourseProviderController@view')->middleware('auth');
Route::get('/course-provider/{id}/edit','CourseProviderController@edit')->middleware('auth');
Route::post('/course-provider/{id}/edit','CourseProviderController@editInsert')->middleware('auth');
Route::get('/course-provider/{id}/delete','CourseProviderController@delete')->middleware('auth');