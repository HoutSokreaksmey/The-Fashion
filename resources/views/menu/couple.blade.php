@extends('home.layout')
@section('content')
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="jumbotron">
          <h1 class="display-3">Couple</h1>
          <div class="btn-group" role="group" aria-label="Basic example">
            @foreach ($categories as $item)
              <button style="border: 1px solid gray;" type="button" class="scroll btn btn-default">{{$item}}</button>
            @endforeach
          </div>
        </div>
      </div>
    </div>
    <div style="position:relative;width:200px;height:30px;margin-bottom: 12px;margin-top: -25px;">
      <h3 class="lbl-container">Suit</h3>
    </div>
    <div class="row">
      @foreach ($products as $item)
      <div class="col-lg-2 col-sm-2 col-xs-6" style="margin-top:5px">
        <img class="img-fluid" src="{{ $item['product_img'] }}" alt="">
        <p style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{ $item['code']}}</p>
        {{-- <hr> --}}
        <p style="margin-top:-5px;" class="productprice">{{ $item['price'] }} USD</p>
      </div>
      @endforeach
    </div>
    <div style="text-align:right;">
      <button class="btn btn-secondary">more...</button>
    </div>
    <br>
  </div>
@endsection