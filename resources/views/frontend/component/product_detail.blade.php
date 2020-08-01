@extends('frontend.app')
@section('title', 'Product Detail')
@section('content')
<div class="container" style="margin-top:150px;">
    <div class="row">
        <div class="col-lg-4 col-sm-6 col-xs-12">
        <img class="img-fluid" style="border: 1px soliddddrgb(56, 49, 49)" src="{{$product->product_img}}" alt="">
        </div>

        <div class="col-lg-4 col-sm-6 col-xs-12" style="font-weight:bold;">
          <div class="col-lg-12 col-xs-12">
            <h5>{{$product->product_name}}</h5><hr>
          </div>                
          <div>
          <p style="margin-left:30px;font-size:14px;">Code <span style="margin-left: 50px;">{{$product->product_code}}</span></p>
          <p style="margin-left:30px;font-size:14px;">Price <span style="margin-left: 50px;">{{$product->product_price}} USD</span></p>
          <p style="margin-left:30px;font-size:14px;">Type <span style="margin-left: 38px;">{{$product->category_id}}</span></p>
          <p style="margin-left:30px;font-size:14px;">aa<span style="margin-left: 38px;">{{$product->subcategory_id}}</span></p>
        </div>
        </div>
        <div class="col-lg-4 col-sm-6 col-xs-12">
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">Your Shopping Cart</h4>
              <p style="margin-left: 10px;font-size: 14px;" class="card-text">You have no items in your shopping cart.</p>
              <p style="margin-left: 30px;font-size: 14px;"><a href="/"> Click here</a> to continue shopping.</p>
              <p></p>
            </div>
          </div>
        </div>
    </div>
</div>
@endsection