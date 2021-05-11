@extends('layouts.main')
@section('content')

    <h1 class="h3 mb-2 text-gray-800">Course Providers</h1>
    <div class="card shadow mb-4">
        @if (session('msg'))
            <span class=" mt-2 alert alert-danger"> {{ session('msg') }} </span>
        @endif
        <div class="card-header py-3">
        <a href="{{ url('course-provider/add') }}" class="btn btn-primary" style="float:right"> <i class="fa fa-add"></i>  Add Course Provider </a>
        <h6 class="m-0 font-weight-bold text-primary">All Course Providers</h6>
    </div>

    <div class="card-body">
        
        <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>Affiliate Code</th>
                <th>Full name</th>
                <th>Institute name</th>
                <th>Email</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
                <th>Zipcode</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($cps as $cp)
            <tr>
                <td>{{ $cp->code }}</td>
                <td>{{ $cp->full_name }}</td>
                <td>{{ $cp->institute_name }}</td>
                <td>@if (App\User::find($cp->user_id) != null) {{ App\User::find($cp->user_id)->email }} @else @endif</td>
                <td>{{ substr($cp->address, 0, 15) }}</td>
                <td>{{ $cp->city }}</td>
                <td>{{ $cp->state }}</td>
                <td>{{ $cp->country }}</td>
                <td>{{ $cp->zipcode }}</td>
                <td>
                    <a href="{{ url('course-provider/'.$cp->id.'/view') }}" class="btn  btn-sm btn-info">
                        <i class="fa fa-eye"></i> 
                        View
                    </a>
                    <a href="{{ url('course-provider/'.$cp->id.'/edit') }}" class="btn btn-sm btn-success">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                        Edit
                    </a>
                    <a href="{{ url('course-provider/'.$cp->id.'/delete') }}" onclick="return confirm('Are you sure you want to delete?');" class="btn btn-sm btn-danger">
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