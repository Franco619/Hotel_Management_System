@extends('admin.admin_dashbaord')
@section('admin')

<div class="page-content">
<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
<div class="breadcrumb-title pe-3">User Profile</div>
<div class="ps-3">
<nav aria-label="breadcrumb">
<ol class="breadcrumb mb-0 p-0">
<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i></a>
</li>
<li class="breadcrumb-item active" aria-current="page">User Profile</li>
</ol>
</nav>
</div>
<div class="ms-auto">
<div class="btn-group">
<button type="button" class="btn btn-primary">Settings</button>
<button type="button" class="btn btn-primary split-bg-primary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown">	<span class="visually-hidden">Toggle Dropdown</span>
</button>
<div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-end">	<a class="dropdown-item" href="javascript:;">Action</a>
<a class="dropdown-item" href="javascript:;">Another action</a>
<a class="dropdown-item" href="javascript:;">Something else here</a>
<div class="dropdown-divider"></div>	<a class="dropdown-item" href="javascript:;">Separated link</a>
</div>
</div>
</div>
</div>
<!--end breadcrumb-->
<div class="container">
<div class="main-body">
<div class="row">
<div class="col-lg-4">
<div class="card">
<div class="card-body">
<div class="d-flex flex-column align-items-center text-center">
<img src="{{ (!empty( $profileData->photo)) ? url('upload/admin_images/'.$profileData->photo) : url('upload/no_image.jpg') }}" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
<div class="mt-3">
<h4>{{  $profileData->name }}</h4>
<p class="text-secondary mb-1">{{  $profileData->email }}</p>
<button class="btn btn-primary">Follow</button>
<button class="btn btn-outline-primary">Message</button>
</div>
</div>
<hr class="my-4" />

</div>
</div>
</div>
<div class="col-lg-8">
<div class="card">
    <form action="{{ route('admin.profile.update') }}" enctype="multipart/form-data" method="post">
        @csrf
<div class="card-body">
<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0">Full Name</h6>
</div>
<div class="col-sm-9 text-secondary">
<input type="text" name="name" class="form-control" value="{{  $profileData->name }}" />
</div>
</div>
<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0">Email</h6>
</div>
<div class="col-sm-9 text-secondary">
<input type="email" name="email" class="form-control" value="{{  $profileData->email }}" />
</div>
</div>
<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0">Phone</h6>
</div>
<div class="col-sm-9 text-secondary">
<input type="text" name="phone" class="form-control" value="{{  $profileData->phone }}" />
</div>
</div>
<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0">Address</h6>
</div>
<div class="col-sm-9 text-secondary">
<input type="text" name="address" class="form-control" value="{{  $profileData->address }}" />
</div>
</div>
<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0">photo</h6>
</div>
<div class="col-sm-9 text-secondary">
<input class="form-control" name="photo" id="image" type="file" id="formFile">
</div>
</div>

<div class="row mb-3">
<div class="col-sm-3">
<h6 class="mb-0"></h6>
</div>
<div class="col-sm-9 text-secondary">
<img id="showImage" src="{{ (!empty( $profileData->photo)) ? url('upload/admin_images/'.$profileData->photo) : url('upload/no_image.jpg') }}" alt="Admin" class="rounded-circle p-1 bg-primary" width="80">
</div>
</div>
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-9 text-secondary">
<input type="submit" class="btn btn-primary px-4" value="Save Changes">
</div>
</div>

</div>
</form>
</div>

</div>
</div>
</div>
</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript">

    $(document).ready(function(){
    $('#image').change(function(e){
    var reader = new FileReader();
    reader.onload = function(e){
    $('#showImage').attr('src',e.target.result);
    }
    reader.readAsDataURL(e.target.files['0']);
    });
    });
    </script>

@endsection

