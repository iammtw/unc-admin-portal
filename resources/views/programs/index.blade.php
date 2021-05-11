@extends('layouts.main')
@section('content')

    <h1 class="h3 mb-2 text-gray-800">Programs</h1>
    <div class="card shadow mb-4">
        @if (session('msg'))
            <span class=" mt-2 alert alert-danger"> {{ session('msg') }} </span>
        @endif
        <div class="card-header py-3">
        <a href="{{ url('programs/add') }}" class="btn btn-primary" style="float:right"> <i class="fa fa-add"></i>  Add Program </a>
        <h6 class="m-0 font-weight-bold text-primary">All Programs</h6>
    </div>

    <div class="card-body">
        
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>Program Name</th>
                <th>Major</th>
                <th>Credit Hours</th>
                <th>Duration</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($programs as $program)
            <tr>
                <td>{{ $program->program_name }}</td>
                <td>{{ $program->major }}</td>
                <td>{{ $program->credit_hours }}</td>
                <td>{{ $program->duration }}</td>
                <td>
                    <a href="{{ url('programs/'.$program->id.'/view') }}" class="btn btn-info">View</a>
                    <a href="{{ url('programs/'.$program->id.'/edit') }}" class="btn btn-success">Edit</a>
                    <a href="{{ url('programs/'.$program->id.'/delete') }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger">Delete</a>
                </td>
            
            </tr>
            @endforeach

            </tbody>
        </table>
        </div>
    </div>
    </div>
          

@endsection