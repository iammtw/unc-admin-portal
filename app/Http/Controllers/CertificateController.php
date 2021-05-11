<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Certificate;
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
        if($certificates != null){
            return Response::json($certificates);
        } else {
            $error = array(
                "error"=>"Certificate not Found!"
            );
            return Response::json(json_encode($error));
        }
        
    }
}
