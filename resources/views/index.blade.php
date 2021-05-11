@extends('layouts.main')
@section('content')
<div class="row">
  <div class="col-xl-12 col-md-12 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
      <div class="card-body">
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            <div
              class="text-center display-6 font-weight-bold text-primary text-uppercase mb-1"
            >
              Total Students
            </div>
            <div
              class="h5 mb-0 text-center display-4 font-weight-bold text-gray-800"
            >
            5
            </div>
          </div>
          <div class="col-auto">
            <i class="fas fa-users fa-2x text-gray-300"></i>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-xl-12 col-md-12 mb-4">
    <div class="card border-left-danger shadow h-100 py-2">
      <div class="card-body">
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            <div
              class="text-center display-5 font-weight-bold text-danger text-uppercase mb-1"
            >
              Total Certificates
            </div>
            <div
              class="h5 mb-0 text-center display-4 font-weight-bold text-gray-800"
            >
             5
            </div>
          </div>
          <div class="col-auto">
            <i class="fas fa-award fa-2x text-gray-300"></i>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-xl-12 col-md-12 mb-4">
    <div class="card border-left-warning shadow h-100 py-2">
      <div class="card-body">
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            <div
              class="text-center display-5 font-weight-bold text-warning text-uppercase mb-1"
            >
              Total Programs
            </div>
            <div
              class="h5 mb-0 text-center display-4 font-weight-bold text-gray-800"
            >
             {{ App\Program::all()->count() }}
            </div>
          </div>
          <div class="col-auto">
            <i class="fas fa-book-open fa-2x text-gray-300"></i>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-xl-12 col-md-12 mb-4">
    <div class="card border-left-secondary shadow h-100 py-2">
      <div class="card-body">
        <div class="row no-gutters align-items-center">
          <div class="col mr-2">
            <div
              class="text-center display-5 font-weight-bold text-secondary text-uppercase mb-1"
            >
              Total Course Provider
            </div>
            <div
              class="h5 mb-0 text-center display-4 font-weight-bold text-gray-800"
            >
            5
            </div>
          </div>
          <div class="col-auto">
            <i class="fas fa-chalkboard fa-2x text-gray-300"></i>
          </div>
        </div>
      </div>
    </div>
  </div>


</div>
@endsection
        
            
          

      

   
    


  
  
