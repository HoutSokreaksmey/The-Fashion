@extends('layouts.backend')
@section('title', 'Update Product')
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
                            <h3 class="mb-0">{{ __('Update Product') }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            <a href="{{ route('product.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                        </div>
                    </div>
                </div>

                <div class="container col-xl-8">
                    <div class="row">
                        <div class="col">
                            <form action="{{route('product.update', $product->id)}}" method='POST' enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="preview text-center">
                                    <img class="preview-img" src="{{asset('uploads/products')}}/{{ $product->product_img }}" id="product_img" alt="Preview Image" width="200" height="200"/>
                                    <div class="browse-button" style="left: 281px">
                                        <i class="fa fa-pencil-alt"></i>
                                        <input class="browse-input" type="file" required id="img_input" name="product_img" onClick="readURL()"/>
                                    </div>
                                    <span class="Error"></span>
                                </div>
                                <div class="form-group">
                                    <label for="">Product name</label>
                                    <input value="{{ $product->product_name }}" type="text" class="form-control text-dark" name="pro_name" placeholder="Enter name">
                                </div>
                                <div class="form-group">
                                    <label for="">Product code</label>
                                    <input value="{{ $product->product_code }}" type="text" class="form-control text-dark" name="pro_code" placeholder="Enter code">
                                </div>
                                <div class="form-group">
                                    <label for="">Product price</label>
                                    <input value="{{ $product->product_price }}" type="text" class="form-control text-dark" name="pro_price" placeholder="Enter price">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Category</label>
                                            <select class="form-control text-dark" id="inputState" name="category">
                                                    <option value="">--- ( Select ) ---</option>
                                                @foreach ($category as $cat)
                                                    <option value="{{ $cat->id }}" {{ $cat->id == $product->category_id ? 'selected' : '' }}>{{ $cat->category_name }}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Sub category</label>        
                                            <select class="form-control text-dark" id="inputState" name="subcategory">
                                                    <option value="">--- ( Select ) ---</option>
                                                    @foreach ($subcategory as $subcat)
                                                        <option value="{{ $subcat->id }}" {{ $subcat->id == $product->subcategory_id ? 'selected' : '' }}>{{ $subcat->subcategory_name }}</option>
                                                    @endforeach
                                            </select>
                                    </div>
                                </div>

                                <div class="modal-footer mt-5 mb-4">
                                    <input type="submit" class="btn btn-primary" value="Insert">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
@endsection

@section('script')
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#product_img').attr('src', e.target.result);
            }
            
            reader.readAsDataURL(input.files[0]);
        }
    }
        $("#img_input").change(function(){
        //alert();
        readURL(this);
    });
</script>
@endsection