@extends('frontend.app')
@section('title', 'Product Detail')
@section('content')
<div class="container-fluid mt--7">
    <div class="row">
        <div class="col-12 center">
            <div class="card shadow">
                <div class="container" style="margin-top: 5%">
                    <div class="row">
                        <div class="col-5 mt-5">
                          <img class="img-fluid rounded" id="baseImg" src="{{asset('uploads/products')}}/{{ $product->product_img }}" style="border: 2px solid gray">
                        </div>
                        <div class="col-6 mt-6">
                          <h2 class="d-flex">{{ $product->product_name }}</h2>
                          {{-- <p class="mt-4 " style="border: 0.5px solid gray; opacity:0.5"></p> --}}
                          <div class="row bg-light ml-1 p-2">
                              <div class="col-2">
                                  <img src="https://www.designhill.com/design-blog/wp-content/uploads/2015/02/Pandora.jpg" style="width:100px">
                              </div>
                              <div class="col-6 ml-4">
                                  <div class="mt-3 text-dark">Brand​​ Name</div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="col-4 ml-4 mt-3">
                                      <h5 class=""> Code </h5>
                                      <h5 class=""> Price </h5>                                      
                                      <h5 class=""> Type </h5>                                      
                                      <h5 class=""> Type Product </h5>                                      
                              </div>
                              <div class="col-6 mt-3">
                                  <h5 class=""> {{ $product->product_code }} </h5>
                                  <h5 class="text-danger"> {{ $product->product_price }} USD</h5>
                                  <h5 class=""><span class="badge badge-pill badge-primary bg-primary  text-white ">{{$product->category->category_name}}</span></h5>
                                  <h5 class=""><span class="badge badge-pill badge-primary bg-primary  text-white ">{{ $product->subcategory->subcategory_name }}</span></h5>
                              </div>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection