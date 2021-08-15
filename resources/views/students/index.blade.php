@extends('layouts.main')
@section('content')

    <h1 class="h3 mb-2 text-gray-800">Students</h1>
    <div class="card shadow mb-4">
        @if (session('msg'))
            <span class=" mt-2 alert alert-danger"> {{ session('msg') }} </span>
        @endif
        <div class="card-header py-3">
        <a href="{{ url('students/add') }}" class="btn btn-primary" style="float:right"> <i class="fa fa-add"></i>  Add Student </a>
        <h6 class="m-0 font-weight-bold text-primary">All Students</h6>
    </div>

    <div class="card-body">
        
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>Enrollment No.</th>
                <th>Name</th>
                <th>Date of Birth</th>
                <th>Nationality</th>
                <th>Program</th>
                <th>Enroll Date</th>
                <th>Status</th>
                <th>Approved</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>View</th>
                <th>Activate/Deactivate</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($students as $student)
            <tr>
                <td>{{ $student->registration_no }}</td>
                <td>{{ $student->full_name }}</td>
                <td>{{ $student->dob_day.'-'.$student->dob_month.'-'.$student->dob_year  }}</td>
                <td>{{ $student->nationality }}</td>
                <td>
                    <a href="{{ url('/programs/'.$student->program_id.'/view') }}">
                        {{ App\Program::find($student->program_id)->program_name }}
                    </a>
                </td>
                <td>{{ date('d-m-Y', strtotime($student->enrolment_date)) }}</td> 
                
                <td>{{ $student->status == 1 ? "Paid" : "unPaid" }}</td>
                <td>{{ $student->approved == 1 ? "YES" : "No" }}</td>
                <td>
                     <a href="{{ url('students/'.$student->id.'/edit') }}" class="btn btn-sm btn-success">
                       
                        Edit
                    </a>
                </td>
                <td>
                      <a href="{{ url('students/'.$student->id.'/delete') }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-sm btn-danger">
                       
                        Delete
                    </a>
                </td>
                <td>
                    <a href="{{ url('students/'.$student->id.'/view') }}" class="btn btn-sm btn-info">
                       
                        View
                    </a>
                   
                  
                </td>
                <td>
                    @if ($student->isactive == "1")
                    <a href="{{ url('students/active/'.$student->id.'/0') }}" class="btn btn-sm btn-danger">DeActivate</a>
                    @else
                    <a href="{{ url('students/active/'.$student->id.'/1') }}" class="btn btn-sm btn-success">Activate</a> 
                    @endif
                </td>
            
            </tr>
            @endforeach

            </tbody>
        </table>
        </div>
    </div>
    </div>
          

@endsection