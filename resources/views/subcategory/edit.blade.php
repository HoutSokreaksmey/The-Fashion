@extends('layouts.backend')
@section('title', 'Update SubCategory')
@section('content')
<div class="container-fluid mt--7">
    <div class="row">
        <div class="col-12 center">
            <div class="card shadow">
                <div class="card-header bg-white border-0">
                    <div class="row align-items-center">
                        <div class="col-8">
                            <h3 class="mb-0">{{ __('Create Sub Category') }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            <a href="{{ route('subcategory') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
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
                            <form action="{{ route('subcategory.update', $subcategory->id) }}" method='post' enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Sub category name</label>
                                    <input value="{{$subcategory->subcategory_name}}" type="text" class="form-control text-dark" name="subcategory_name" placeholder="Enter name" autocomplete="off">
                                </div>
                                <div class="form-group">
                                        <label for="">Category</label>
                                        <select class="form-control text-dark" id="inputState" name="category">
                                                {{-- <option value="">--- ( Select ) ---</option> --}}
                                            @foreach ($category as $cat)
                                                <option value="{{ $cat->id }}"{{ $cat->id == $subcategory->category_id ? 'selected' : '' }}>{{ $cat->category_name }}</option>
                                            @endforeach
                                        </select>
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
@endsection