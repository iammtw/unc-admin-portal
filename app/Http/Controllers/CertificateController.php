<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Certificate;
use App\Student;
use App\Program;
use Response;

class CertificateController extends Controller
{
    public function index(){
        $certificates = Certificate::all();
        return view('certificates.index',compact('certificates'));
    }

    public function add(){
        return view('certificates.add');
    }

    public function insert(Request $req){

        $checkingCertificate = Certificate::where('certificate_no', $req->certificate_no)->first();
        $checkingStudent = Student::where('registration_no', $req->registration_no)->first();
        if($checkingCertificate != null){
            return redirect()->back()->with('msg','Certificate Number Already Exists!');
        }
        if($checkingStudent == null){
            return redirect()->back()->with('msg','Student Not Exists with this Registration Number!');
        }

        $certificate = new Certificate;
        $certificate->certificate_no = $req->certificate_no;
        $certificate->registration_no = $req->registration_no;
        $certificate->graduation_date = $req->graduation_date;
        $certificate->status = $req->status;
        $certificate->save();
        return redirect('certificates')->with('msg','Successfully Added!');
    }

    public function view($id){
        $certificate = Certificate::find($id);
        return view('certificates.view',compact('certificate'));
    }

    public function edit($id){
        $certificate = Certificate::find($id);
        return view('certificates.edit',compact('certificate'));
    }

    public function editInsert(Request $req, $id){

        $checkingStudent = Student::where('registration_no', $req->registration_no)->first();
        if($checkingStudent == null){
            return redirect()->back()->with('msg','Student Not Exists with this Registration Number!');
        }
        
        $checkingCertificate = Certificate::where('certificate_no', $req->certificate_no)->where('id','!=',$id)->first();
        if($checkingCertificate != null){
            return redirect()->back()->with('msg','Certificate Number Already Exists!');
        }      

        $certificate = Certificate::find($id);
        $certificate->certificate_no = $req->certificate_no;
        $certificate->registration_no = $req->registration_no;
        $certificate->graduation_date = $req->graduation_date;
        $certificate->status = $req->status;
        $certificate->save();
        return redirect('certificates')->with('msg','Successfully Added!');
    }

    public function delete($id){
        Certificate::find($id)->delete();
        return redirect('certificates')->with('msg','Successfully Deleted!');
    }

    public function forApi($cert_no){
        $certificates = Certificate::where('certificate_no',$cert_no)->first();
        $certificates->graduation_date = date('d-m-Y',strtotime($certificates->graduation_date));
        if($certificates != null){
            $student = Student::where('registration_no',$certificates->registration_no)->first();
            if($student != null) {
                 $certificates->student_name = $student->full_name;
                 $program_name = Program::find($student->program_id)->program_name;
                  if($program_name != null){
                    $certificates->cert_name = $program_name;
                  }
                if($student->isactive == 1){
                    return Response::json($certificates);
                } else {
                    $error = array("error" => "Certificate not Found!");
                    return Response::json(json_encode($error));
                }
            } else {
                return Response::json($certificates);
            }
        } else {
            $error = array(
                "error"=>"Certificate not Found!"
            );
            return Response::json(json_encode($error));
        }
        
    }
}
