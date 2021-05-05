<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CourseProviderController extends Controller
{
    public function index(){
        return view('course_providers.index');
    }
}
