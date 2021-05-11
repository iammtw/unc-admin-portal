@extends('layouts.main')
@section('content')

<div class="container mt-4">
    <h1 class="h3 mb-4 text-gray-800" style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">Students</h1>
    @if (session('msg'))
        <span class=" mt-2 alert alert-success"> {{ session('msg') }} </span>
    @endif
    <div class="card shadow mt-4 mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Add Student</h6>
        </div>
        <div class="card-body">
            
           <div class="row">
               <div class="col-md-12">
                <form action="{{ url('students/'.$student->id.'/edit') }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for=""> Enrollment No </label>
                        <input type="text" name="registration_no" value={{ $student->registration_no }} disabled required class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Full name </label>
                        <input type="text" name="full_name" required value={{ $student->full_name }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Date of Birth </label>
                        <?php
                            $dob = $student->dob_year.'-'.$student->dob_month.'-'.$student->dob_day;
                            $newdob = date("Y-m-d", strtotime($dob));
                        ?>
                        <input type="date" name="dob" required value={{  $newdob }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Nationality </label>
                        <input type="text" name="nationality" required value={{ $student->nationality }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Program  </label>
                        <select name="program_id" id="" class="form-control">
                            <option value={{ $student->program_id }} selected>{{ App\Program::find($student->program_id)->program_name }} </option>
                            @foreach ($programs as $program)
                                <option value={{ $program->id }} >{{ $program->program_name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="form-group">
                        <label for=""> Major </label>
                        <input type="text" name="enrolment_major" required value={{ $student->enrolment_major }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Registration duration  </label>
                        <input type="text" name="registration_duration" required value={{ $student->registration_duration }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Registration location  </label>
                        <input type="text" name="registration_location" required value={{ $student->registration_location }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Enrollment Date </label>
                        <input type="date" name="enrolment_date" required value={{ $student->enrolment_date }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for=""> Completion Date <span class="text-danger">(optional)</span>  </label>
                        <input type="date" name="completion_date" value={{ $student->completion_date }} class="form-control" id="">
                    </div>

                    <div class="form-group">
                        <label for="">Status</label>
                        <select name="status" id="" class="form-control">
                            @if ($student->status == "1")
                                <option value="1" selected>Paid</option>
                                <option value="0">UnPaid</option>
                            @else
                                <option value="1" >Paid</option>
                                <option value="0" selected>UnPaid</option>
                            @endif
                          
                        </select>
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

      
