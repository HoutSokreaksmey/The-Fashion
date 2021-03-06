<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}">
        <title>
          @yield('title')
        </title>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="float-right">
                    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: gray;">
                        <a class="navbar-brand" href="/"><img src="{{asset('img/fashion.png')}}" style=" margin-left:30px;width:80px;height:45px;margin-top:-15px;margin-bottom:-10px;"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                          <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarColor01">
                          <ul class="navbar-nav mr-auto">
                            @foreach ($category as $categories)
                              <li class="nav-item active">
                                  <a class="nav-link" href="/{{$categories->category_name }}">{{ $categories->category_name }}</a>
                              </li> 
                            @endforeach
                            <div class="col-sm-4 col-md-4" >
                                <form action="{{ route('search') }}" method="GET" class="navbar-search navbar-search-info form-inline d-md-flex ml-lg-auto mb-0">
                                  <div class="form-group">
                                      <div class="input-group input-group-alternative">
                                          <div class="input-group-prepend">
                                              <span class="input-group-text"><i class="fas fa-search"></i></span>
                                          </div>
                                          <input class="form-control" placeholder="Search" type="text" name="search_value">
                                      </div>
                                      <input type="submit" class="btn btn-secondary ml-3" value="Search" />
                                  </div>
                              </form>
                            </div>
                          </ul>
                        </div>
                        <div class="top-right links">
                            @auth
                            <a href="{{ url('/home') }}">Home</a>
                            @else
                                <a href="{{ route('login') }}">Login</a>

                                @if (Route::has('register'))
                                    <a href="{{ route('register') }}">Register</a>
                                @endif
                            @endauth
                        </div>
                      </nav>
                </div>
            @endif

            <div style="margin-top: 60px">
                @foreach ($products as $products)
                <div class="col-lg-3 col-md-6 col-12">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="{{route('product_detail', $products->id)}}">
                                <img class="pic-1" class="img-fluid" src="{{asset('uploads/products')}}/{{ $products->product_img }}">
                            </a>
                        </div>
                        <div class="product-content">
                            <h3 style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{ $products->product_code }}</h3>
                            <div style="margin-top:-5px;" class="productprice">{{ $products->product_price }} USD</div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
          @include('frontend.footer')
    </body>
</html>
