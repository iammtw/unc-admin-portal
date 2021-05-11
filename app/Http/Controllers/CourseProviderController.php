<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Course_provider;
use App\User;

class CourseProviderController extends Controller
{
    public function index(){
        $cps = Course_provider::all();
        return view('course_providers.index',compact('cps'));
    }

    public function add(){
        // $cp = Course_provider::orderBy('id','desc')->first()->code;
        // return $cp+1;
        return view('course_providers.add');
    }

    public function insert(Request $req){

        $user = new User;
        $user->email = $req->email;
        $user->password = Hash::make($req->password);
        $user->name = $req->full_name;
        $user->role = "course_provider";
        $user->save();

        $cp = new Course_provider;
        $cp->user_id = $user->id;
        $cp->code = $req->code;
        $cp->full_name = $req->full_name;
        $cp->institute_name = $req->institute_name;
        $cp->address = $req->address;
        $cp->phone = $req->phone;
        $cp->fax = $req->fax;
        $cp->mobile = $req->mobile;
        $cp->city = $req->city;
        $cp->state = $req->state;
        $cp->country = $req->country;
        $cp->zipcode = $req->zipcode;
        $cp->save();

        return redirect('course-provider')->with('msg','Successfully Added!');
    }

    public function view($id){
        $cp = Course_provider::find($id);
        return view('course_providers.view',compact('cp'));
    }

    public function edit($id){
        $cp = Course_provider::find($id);
        return view('course_providers.edit',compact('cp'));
    }

    public function editInsert(Request $req, $id){
        
        $cp = Course_provider::find($id);
        
        $user = User::find($cp->user_id);
        $user->email = $req->email;
        if($req->password != null){
            $user->password = Hash::make($req->password);
        }
        $user->name = $req->full_name;
        $user->save();

        $cp->code = $req->code;
        $cp->full_name = $req->full_name;
        $cp->institute_name = $req->institute_name;
        $cp->address = $req->address;
        $cp->phone = $req->phone;
        $cp->fax = $req->fax;
        $cp->mobile = $req->mobile;
        $cp->city = $req->city;
        $cp->state = $req->state;
        $cp->country = $req->country;
        $cp->zipcode = $req->zipcode;
        $cp->save();
        return redirect('course-provider')->with('msg','Successfully Updated!');
    }

    public function delete($id){
        Course_provider::find($id)->delete();
        return redirect('course-provider')->with('msg','Successfully Deleted!');
    }
}
