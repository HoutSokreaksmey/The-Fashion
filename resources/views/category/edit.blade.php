@extends('layouts.backend')
@section('title', 'Edit Category')
@section('style')
    <link href="{{ asset('css/photo_style.css') }}" rel="stylesheet">
@endsection
@section('content')
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-12 center">
                <div class="card shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Update Category') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('category.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                    </div>
  
                    <div class="container col-xl-8">
                        <div class="row">
                            <div class="col">
                                <form action="{{ route('category.update', $category->id) }}" method='post' enctype="multipart/form-data">
                                    {{ csrf_field() }}
                                    {{ method_field('PATCH') }}
                                    <div class="form-group">
                                        <label for="">Category name</label>
                                        <input value="{{$category->category_name}}" type="text" class="form-control text-dark" name="category_name" placeholder="Enter name" autocomplete="off">
                                    </div>

                                    <div class="modal-footer mt--3 mb-4">
                                        <input type="submit" class="btn btn-primary" value="Save">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection