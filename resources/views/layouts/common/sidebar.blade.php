<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
 <a
   class="sidebar-brand d-flex align-items-center justify-content-center"
href="{{ url('/home') }}"
 >
   <div class="sidebar-brand-text mx-3"> UNC </div>
 </a>
 <hr class="sidebar-divider my-0" />


 <li class="nav-item active">
   <a class="nav-link" href="{{ url('/home') }}">
     <i class="fas fa-fw fa-tachometer-alt"></i>
     <span>Dashboard</span></a
   >
 </li>

 <hr class="sidebar-divider" />
 <div class="sidebar-heading">
   Works
 </div>


<li class="nav-item">
   <a class="nav-link" href=" {{ url('/students') }} ">
     <i class="fas fa-fw fa-user-plus"></i>
     <span>Student Enrollments</span>
    </a>
</li>

<li class="nav-item">
  <a class="nav-link" href="{{ url('/certificates') }}">
    <i class="fas fa-fw fa-award"></i>
    <span>Student Certificates</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="{{ url('/programs') }}">
    <i class="fas fa-fw fa-book-open"></i>
    <span>Programs</span></a>
</li>

<li class="nav-item">
  <a class="nav-link" href="{{ url('/course-provider') }}">
    <i class="fas fa-fw fa-chalkboard"></i>
    <span>Course Providers</span></a
  >
</li>

</ul>
