@extends('frontend.app')
@section('title', 'Home Page')
@section('content')
<div>
<div class="container" style="margin-top: 380px">
  <div class="row">
    <div class="col-12">
      {{-- Content Slide --}}
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
          <li data-target="#myCarousel" data-slide-to="4"></li>
          <li data-target="#myCarousel" data-slide-to="5"></li>
        </ol>
    
        <!-- Wrapper for slides -->
        <div class="carousel-inner" style="margin-bottom: 20px;">
            @foreach($slides as $key => $slider)
              <div class="carousel-item {{$key == 0 ? 'active' : '' }}">
                <img src="{{$slider->url}}" class="d-block w-100"  alt="..."> 
              </div>
            @endforeach
            {{-- @foreach($slides as $item)
              <div class="carousel-item active">
                <img src="{{$item->url}}" class="d-block w-100"  alt="..."> 
              </div>      
            @endforeach --}}
    
        <!-- Left and right controls -->
        {{-- <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a> --}} 
      </div>
      </div>
      {{-- End Conten Slide --}}
    </div>
  </div>
  <br>
  <div class="container">
    <div class="row" style="position:relative;width:200px;height:30px;margin-bottom: 15px;margin-top: -25px;">
      <h3 class="lbl-container">New Arrival</h3>
    </div>
    <div class="row">
      @foreach ($products as $item)
        <div class="col-lg-2 col-sm-2 col-xs-6" style="margin-top:5px">
          <a href="{{route('product_detail',$item->id)}}" style="color: black; text-decoration: none;">
            <img class="img-fluid" src="{{$item->product_url}}" alt="">
            <p style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{$item->product_code}}</p>
            <p style="margin-top:-5px;" class="productprice">{{$item->product_price}} USD</p>
          </a>
        </div>
      @endforeach
    </div>
  </div>
  <hr>
<br>
  <div class="container">
    <div class="row" style="position:relative;width:200px;height:30px;margin-bottom: 15px;margin-top: -25px;">
      <h3 class="lbl-container">Popularity</h3>
    </div>
    <div class="row">
      @foreach ($products as $item)
        <div class="col-lg-2 col-sm-2 col-xs-6" style="margin-top:5px">
          <a href="{{route('product_detail',$item->id)}}" style="color: black; text-decoration: none;">
            <img class="img-fluid" src="{{$item->product_url}}" alt="">
            <p style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{$item->product_code}}</p>
            <p style="margin-top:-5px;" class="productprice">{{$item->product_price}} USD</p>
          </a>
        </div>
      @endforeach
    </div>
    <br><hr>
  </div>
</div>
<div class="container">
  <div class="row">
      <div class="col-12">
          <h1 class="section-title" style="background-color: white"> Privileged <br><span>Partner</span></h1>
      </div>
  </div>
  <div class="row">
      <div class="col-">
          <section id="clients">
              <div id="clients-carousel" class="text-center">
                  <div class="d-flex justify-content-center" id="clients clients-carousel" style="margin-bottom:40px;">
                      <div>
                          <a target="_blank" href="https://www.pipay.com"><img src="https://thefashion.asia/image/partner/Thefashion_20171006153638-750645.PNG"></a>
                      </div>
                      <div>
                          <a target="_blank" href="https://www.wingmoney.com/km/"><img src="https://thefashion.asia/image/partner/Thefashion_20170217034616-861666.PNG"></a>
                      </div>
                      <div>
                          <a target="_blank" href="https://www.paygo24.com/"><img src="https://thefashion.asia/image/partner/Thefashion_20171024055123-158368.PNG"></a>
                      </div>
                      <div>
                          <a target="_blank" href="https://www.smart.com.kh/more/smartluy/"><img src="https://thefashion.asia/image/partner/Thefashion_20181116060745-017398.PNG"></a>
                      </div>
                      <div>
                          <a target="_blank" href="https://kraftino.com/"><img src="https://thefashion.asia/image/partner/Thefashion_20170617111412-195042.PNG"></a>
                      </div>
                  </div>
              </div>
          </section>
      </div>
  </div>
</div>
@endsection