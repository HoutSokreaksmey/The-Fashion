@extends('layouts.backend')
@section('title', 'Create Product')
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
                            <h3 class="mb-0">{{ __('Insert Product') }}</h3>
                        </div>
                        <div class="col-4 text-right">
                            <a href="{{ route('product.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                        </div>
                    </div>
                </div>

                <div class="container col-xl-8">
                    <div class="row">
                        <div class="col">
                            <form action="{{route('product.store')}}" method='POST' enctype="multipart/form-data">
                                @csrf
                                <div class="preview text-center">
                                    <img class="preview-img" src="https://icon-library.net/images/image-gallery-icon/image-gallery-icon-27.jpg" id="product_img" width="200" height="200"/>
                                    <div class="browse-button" style="left: 281px">
                                        <i class="fa fa-pencil-alt"></i>
                                        <input class="browse-input" type="file" required id="img_input" name="product_img" onClick="readURL()"/>
                                    </div>
                                    <span class="Error"></span>
                                </div>
                                <div class="form-group">
                                    <label for="">Product name</label>
                                    <input type="text" class="form-control text-dark" name="pro_name" placeholder="Enter name">
                                </div>
                                <div class="form-group">
                                    <label for="">Product code</label>
                                    <input type="text" class="form-control text-dark" name="pro_code" placeholder="Enter code">
                                </div>
                                <div class="form-group">
                                    <label for="">Product price</label>
                                    <input type="text" class="form-control text-dark" name="pro_price" placeholder="Enter price">
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="">Category</label>
                                            <select class="form-control text-dark" id="inputState" name="category">
                                                    <option value="">--- ( Select ) ---</option>
                                                @foreach ($category as $cat)
                                                    <option value="{{ $cat->id }}">{{ $cat->category_name }}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="">Sub category</label>        
                                            <select class="form-control text-dark" id="inputState" name="subcategory">
                                                    <option value="">--- ( Select ) ---</option>
                                                    @foreach ($subcategory as $subcat)
                                                        <option value="{{ $subcat->id }}">{{ $subcat->subcategory_name }}</option>
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