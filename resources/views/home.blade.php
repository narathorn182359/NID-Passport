@extends('layouts.app')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">NID</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
          
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
      <!-- Info boxes -->
      <div class="row">
  
        <div class="col-12 col-sm-6 col-md-3">
            <a href="{{url('indexkmuser')}}">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
                      <div class="info-box-content">
                      <span class="info-box-text">KM360</span>
                      <span class="info-box-number">{{$count_km}} ความรู้</span>
                    </div>
                    <!-- /.info-box-content -->
                  </div>
            </a>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->




@endsection
