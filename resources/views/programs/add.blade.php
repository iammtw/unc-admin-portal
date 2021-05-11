@extends('layouts.main')
@section('content')

<div class="container mt-4">
    <h1 class="h3 mb-4 text-gray-800" style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Program</h1>
    @if (session('msg'))
        <span class=" mt-2 alert alert-success"> {{ session('msg') }} </span>
    @endif
    <div class="card shadow mt-4 mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add Program</h6>
        </div>
        <div class="card-body">
            
           <div class="row">
               <div class="col-md-6 offset-3">
                <form action="{{ url('programs/add') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for=""> Project name </label>
                        <input type="text" name="program_name" required class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Major </label>
                        <input type="text" name="major" required class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Credit Hours  </label>
                        <input type="text" name="credit_hours" required class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Duration  </label>
                        <input type="text" name="duration" required class="form-control" id="">
                    </div>
                   
                    <div>
                        <button type="submit" class="btn btn-info btn-block">Submit</button>
                    </div>
                </form>
               </div>
           </div>
        </div>
    </div>
</div>

@endsection

      
