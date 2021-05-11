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
                <th>Course Provider</th>
                <th>Status</th>
                <th>Approved</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($students as $student)
            <tr>
                <td>{{ $student->registration_no }}</td>
                <td>{{ $student->full_name }}</td>
                <td>{{ $student->dob_day.'-'.$student->dob_month.'-'.$student->dob_year  }}</td>
                <td>{{ $student->nationality }}</td>
                <td>{{ App\Program::find($student->program_id)->program_name }}</td>
                <td>{{ $student->enrolment_date }}</td>
                <td>{{ $student->course_provider_id }}</td>
                <td>{{ $student->status == 1 ? "Paid" : "unPaid" }}</td>
                <td>{{ $student->approved == 1 ? "YES" : "No" }}</td>
                <td>
                    <a href="{{ url('students/'.$student->id.'/view') }}" class="btn btn-sm btn-info">
                        <i class="fa fa-eye"></i> 
                        View
                    </a>
                    <a href="{{ url('students/'.$student->id.'/edit') }}" class="btn btn-sm btn-success">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        Edit
                    </a>
                    <a href="{{ url('students/'.$student->id.'/delete') }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-sm btn-danger">
                        <i class="fa fa-trash"></i> 
                        Delete
                    </a>
                </td>
            
            </tr>
            @endforeach

            </tbody>
        </table>
        </div>
    </div>
    </div>
          

@endsection