<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::resource('students', 'StudentsController');
Route::resource('classes', 'ClassesController');
Route::resource('teachers', 'TeachersController');
Route::get('/newsub/{student}', "StudentsController@addASubject");
Route::post('/newsub/{student}', "StudentsController@storeSubject");
Route::get('/chteacher/{student}/{classe}', "StudentsController@chooseTeacher");
Route::post('/chteacher/{student}', "StudentsController@storeTeacher");


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
