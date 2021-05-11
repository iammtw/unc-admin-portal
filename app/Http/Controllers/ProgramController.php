<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Program;

class ProgramController extends Controller
{
    public function index(){
        $programs = Program::all();
        return view('programs.index',compact('programs'));
    }

    public function add(){
        return view('programs.add');
    }

    public function insert(Request $req){
        $program = new Program;
        $program->program_name = $req->program_name;
        $program->major = $req->major;
        $program->credit_hours = $req->credit_hours;
        $program->duration = $req->duration;
        $program->save();
        return redirect('programs')->with('msg','Successfully Added!');
    }

    public function view($id){
        $program = Program::find($id);
        return view('programs.view',compact('program'));
    }

    public function edit($id){
        $program = Program::find($id);
        return view('programs.edit',compact('program'));
    }

    public function editInsert(Request $req, $id){
        $program = Program::find($id);
        $program->program_name = $req->program_name;
        $program->major = $req->major;
        $program->credit_hours = $req->credit_hours;
        $program->duration = $req->duration;
        $program->save();
        return redirect('programs')->with('msg','Successfully Added!');
    }

    public function delete($id){
        $program = Program::find($id)->delete();
        return redirect('programs')->with('msg','Successfully Deleted!');
    }
}
