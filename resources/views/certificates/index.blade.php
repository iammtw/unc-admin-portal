@extends('layouts.main')
@section('content')

    <h1 class="h3 mb-2 text-gray-800">Certificates</h1>
    <div class="card shadow mb-4">
        @if (session('msg'))
            <span class=" mt-2 alert alert-danger"> {{ session('msg') }} </span>
        @endif
        <div class="card-header py-3">
        <a href="{{ url('certificates/add') }}" class="btn btn-primary" style="float:right"> <i class="fa fa-add"></i>  Add Certificate </a>
        <h6 class="m-0 font-weight-bold text-primary">All Certificates</h6>
    </div>

    <div class="card-body">
        
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>Certificate #</th>
                <th>Registration #</th>
                <th>Graduation Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($certificates as $certificate)
            <tr>
                <td>{{ $certificate->certificate_no }}</td>
                <td>{{ $certificate->registration_no }}</td>
                <td>{{ $certificate->graduation_date }}</td>
                <td>{{ $certificate->status == 1 ? 'Active' : 'InActive' }}</td>
                <td>
                    <a href="{{ url('certificates/'.$certificate->id.'/view') }}" class="btn btn-info">
                        <i class="fa fa-eye"></i> 
                        View
                    </a>
                    <a href="{{ url('certificates/'.$certificate->id.'/edit') }}" class="btn btn-success">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        Edit
                    </a>
                    <a href="{{ url('certificates/'.$certificate->id.'/delete') }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-danger">
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