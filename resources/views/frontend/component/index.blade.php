@extends('frontend.app')
@section('title', 'Home Page')
@section('content')
<div class="container">
  <div class="row">
      @include('frontend.component.slide')
     
      @foreach ($subcategory as $subcategories)
      <div class="container">
        <div class="row">
            @if ($subcategories->subcategory_name === 'New Arrival')
                <div style="position:relative; width:200px; height:50px; margin:10px; margin-top:20px">
                    <h3 class="lbl-container bg-secondary text-capitalize">{{ $subcategories->subcategory_name }}</h3>
                </div>
                <div class="row p-4">
                    @foreach ($product as $products)
                        @if ($products->subcategory_id == 9)
                            @include('frontend.component.cardproduct')
                        @endif
                    @endforeach
                </div> 
            @endif
        </div>
      </div>
      <div class="container">
        <div class="row">
                    @if ($subcategories->subcategory_name === 'Popularity')
                        <div style="position:relative; width:200px; height:50px; margin:10px; margin-top:20px">
                            <h3 class="lbl-container bg-secondary text-capitalize">{{ $subcategories->subcategory_name }}</h3>
                        </div>
                        <div class="row p-4">
                            @foreach ($product as $products)
                                @if ($products->subcategory_id == 10)
                                    @include('frontend.component.cardproduct')
                                @endif
                            @endforeach
                        </div>
                    @endif
            </div>
      </div>
      
      <div class="container">
        <div class="row">
                @if($subcategories->subcategory_name === 'Instock')
                    <div style="position:relative; width:200px; height:50px; margin:10px; margin-top:20px">
                        <h3 class="lbl-container bg-secondary text-capitalize">{{ $subcategories->subcategory_name }}</h3>
                    </div>
                    <div class="row p-4">
                    @foreach ($product as $products)
                        @if ($products->subcategory_id == 11)
                            @include('frontend.component.cardproduct')
                        @endif
                    @endforeach
                    </div>
                @endif
            </div>
      </div>
       
      @endforeach    
  </div>
  <hr>
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