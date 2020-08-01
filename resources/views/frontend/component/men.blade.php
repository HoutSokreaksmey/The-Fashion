@extends('frontend.app')
@section('title', 'Men')
@section('content')
  <div class="container" style="margin-top: 50px">
    <div class="row">
      <div class="col">
        <div class="jumbotron">
          <h1 class="display-3 mb-3 mt-n5">Men</h1>
          <form action="" method="POST">
            <div class="btn-group btn-group-toggle btn-block mb-n5" data-toggle="buttons" name="title">
              @foreach ($subcategory as $subcategories)
                @if ($subcategories->category->category_name == 'Men')
                    @if ($subcategories->subcategory_name === 'New Arrival' || $subcategories->subcategory_name === 'Popularity' || $subcategories->subcategory_name === 'Instock')
                        <label class="btn btn-light" hidden>
                            <input type="radio" name="{{ $subcategories->id }}" id="option" autocomplete="off">
                            {{ $subcategories->subcategory_name }}
                        </label>
                    @else
                        <label class="btn btn-light" style="border-color: #ccc">
                            <input type="radio" name="{{ $subcategories->id }}" id="option" autocomplete="off">
                            {{ $subcategories->subcategory_name }}
                        </label>
                    @endif
                @endif 
                @endforeach
            </div>
        </form> 
        </div>
      </div>
    </div>
  </div>

  <div class="container mt-n4">
    <div class="row">
        @foreach ($subcategory as $subcategories)
        @if ($subcategories->category->category_name == 'Men')
            @if ($subcategories->subcategory_name === 'New Arrival' || $subcategories->subcategory_name === 'Popularity' || $subcategories->subcategory_name === 'Instock')
                <div hidden style="position:relative; width:200px; height:50px; margin:10px; margin-top:20px">
                    <h3 class="lbl-container bg-secondary text-capitalize">{{ $subcategories->subcategory_name }}</h3>
                </div>
            @else
                <div style="position:relative; width:200px; height:50px; margin:10px; margin-top:20px">
                    <h3 class="lbl-container bg-secondary text-capitalize">{{ $subcategories->subcategory_name }}</h3>
                </div>
                <div class="row p-4">
                    @foreach ($product as $products)
                        @if ($products->subcategory_id == $subcategories->id)
                            @include('frontend.component.cardproduct')
                        @endif
                    @endforeach
                </div>
            @endif
        @endif
        @endforeach
        
    </div>
</div>
    {{-- <div class="row">
      <div style="position:relative;width:200px;height:30px;margin-bottom: 12px;margin-top: -15px;">
      <h3 class="lbl-container">Shoes</h3>
    </div>
    </div>
    <div class="row">
      @foreach ($product as $products)
      <div class="col-lg-2 col-sm-2 col-xs-6" style="margin-top:5px">
        <img class="pic-1" class="img-fluid" src="{{asset('uploads/products')}}/{{ $products->product_img }}">
        <p style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{ $products->product_code}}</p>
        <p style="margin-top:-5px;" class="productprice">{{ $products->product_price }} USD</p>
      </div>
      @endforeach
    </div> --}}


    {{-- <div style="text-align:right;">
      <button class="btn btn-secondary">more...</button>
    </div> --}}
@endsection