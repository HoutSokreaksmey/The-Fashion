@extends('frontend.app')
@section('title', 'Women')
@section('content')
  <div class="container" style="margin-top: 50px">
    <div class="row">
      <div class="col">
        <div class="jumbotron">
          <h1 class="display-3 mb-3 mt-n5">Couple</h1>
          <form action="" method="POST">
            <div class="btn-group btn-group-toggle btn-block mb-n5" data-toggle="buttons" name="title">
              @foreach ($subcategory as $subcategories)
                @if ($subcategories->category->category_name == 'Couple')
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
        @if ($subcategories->category->category_name == 'Couple')
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
@endsection