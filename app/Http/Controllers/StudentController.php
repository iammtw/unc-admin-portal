<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Student;
use App\Program;
use App\User;

class StudentController extends Controller
{
    public function index(){
        $students = Student::all();
        return view('students.index',compact('students'));
    }

    public function add(){
        $registration_no = null;
        $getLastData = Student::orderBy('id','desc')->first()->registration_no;
         if($getLastData == "NCL10947361013238"){
            $registration_no = "NCL2095001";
         }  else {
            $getOnlyNo = (float) explode('NCL',$getLastData)[1];
            $registration_no = "NCL".($getOnlyNo + 1);
         }
        $programs = Program::all();
        return view('students.add',compact('programs','registration_no'));
    }

    public function insert(Request $req){
        $day = date('d',strtotime($req->dob));
        $month = date('m',strtotime($req->dob));
        $year = date('Y',strtotime($req->dob));

        $registration_no = null;
        $getLastData = Student::orderBy('id','desc')->first()->registration_no;
         if($getLastData == "NCL10947361013238"){
            $registration_no = "NCL2095001";
         }  else {
            $getOnlyNo = (float) explode('NCL',$getLastData)[1];
            $registration_no = $getOnlyNo + 1;
         }

        $Student = new Student;
        $Student->registration_no = $registration_no;
        $Student->full_name = $req->full_name;
        $Student->dob_day = $day;
        $Student->dob_month = $month;
        $Student->dob_year = $year;
        $Student->nationality = $req->nationality;
        $Student->program_id = $req->program_id;
        $Student->enrolment_major = $req->enrolment_major;
        $Student->registration_duration = $req->registration_duration;
        $Student->registration_location = $req->registration_location;
        $Student->enrolment_date = $req->enrolment_date;
        $Student->completion_date = $req->completion_date;
        $Student->status = $req->status;

        if(User::find(Auth::id())->role == "course_provider"){
            $Student->course_provider_id = Auth::id();
        }

        $Student->save();
        return redirect('students')->with('msg','Successfully Added!');
    }

    public function view($id){
        $student = Student::find($id);
        return view('students.view',compact('student'));
    }

    public function edit($id){
        $student = Student::find($id);
        $programs = Program::all();
        return view('students.edit',compact('student','programs'));
    }

    public function editInsert(Request $req, $id){

        $day = date('d',strtotime($req->dob));
        $month = date('m',strtotime($req->dob));
        $year = date('Y',strtotime($req->dob));

        $Student = Student::find($id);
        $Student->full_name = $req->full_name;
        $Student->dob_day = $day;
        $Student->dob_month = $month;
        $Student->dob_year = $year;
        $Student->nationality = $req->nationality;
        $Student->program_id = $req->program_id;
        $Student->enrolment_major = $req->enrolment_major;
        $Student->registration_duration = $req->registration_duration;
        $Student->registration_location = $req->registration_location;
        $Student->enrolment_date = $req->enrolment_date;
        $Student->completion_date = $req->completion_date;
        $Student->status = $req->status;
        $Student->save();
        return redirect('students')->with('msg','Successfully Added!');
    }

    public function delete($id){
        Student::find($id)->delete();
        return redirect('students')->with('msg','Successfully Deleted!');
    }

    
}
