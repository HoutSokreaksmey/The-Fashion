@extends('layouts.backend')
@section('title', 'Create Ads')
@section('style')
    <link href="{{ asset('css/photo_style.css') }}" rel="stylesheet">
@endsection
{{-- <script src="{{ asset('vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('vendor/jquery/jquery.min.js') }}"></script> --}}

@section('content')

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-12 center">
                <div class="card shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Insert Ads') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('ads') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
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
                                <form action="{{ route('ads.store') }}" method='POST' enctype="multipart/form-data" class="was-validated">
                                    @csrf
                                    @method('post')
                                    <div class="preview text-center">
                                        <img class="preview-img" src="https://icon-library.net/images/image-gallery-icon/image-gallery-icon-27.jpg" id="product_img" width="350" height="350"/>
                                        <div class="browse-button" style="left: 206px; width:350px; height:350px">
                                            <i class="fa fa-pencil-alt"></i>
                                            <input class="browse-input" type="file" required id="img_input" name="product_img" />
                                        </div>
                                        <span class="Error"></span>
                                    </div>

                                    <div class="modal-footer mt-5 mb-4">
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
@section('script')
    <script>
        // $(document).ready(function(){
        //     alert('dsd');
            function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                
                reader.onload = function(e) {
                $('#product_img').attr('src', e.target.result);
                }
                
                reader.readAsDataURL(input.files[0]); // convert to base64 string
            }
            }

            $("#img_input").change(function() {
            readURL(this);
        });
    </script>
@endsection