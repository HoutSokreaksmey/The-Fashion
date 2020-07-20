<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/style.css') }}">
    <title>Product Detail</title>
</head>
<body>
    <div class="container">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark fixed-top" style="background-color: gray;">
                <a class="navbar-brand" href="/"><img src="{{asset('img/fashion.png')}}" style=" margin-left:30px;width:80px;height:45px;margin-top:-15px;margin-bottom:-10px;"></a>
                  <div>
                    {{-- <a href="/"><img class="navbar-brand" src="fashion.png" alt=""></a> --}}
                  </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
              
                <div class="collapse navbar-collapse" id="navbarColor01">
                  <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                      <a class="nav-link" href="{{route('product.men')}}">Men <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{route('product.women')}}">Women</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{route('product.couple')}}">Couple</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{route('product.accessories')}}">Accessories</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="{{route('product.brand')}}">Brands</a>
                    </li>
                  </ul>
                  <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="text" placeholder="Search">
                    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                  </form>
                </div>
              </nav>
        </div>
        <div class="container" style="margin-top:150px;">
            <div class="row">
                <div class="col-lg-4 col-sm-6 col-xs-12">
                <img class="img-fluid" style="border: 1px soliddddrgb(56, 49, 49)" src="{{$product->product_url}}" alt="">
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12" style="font-weight:bold;">
                  <div class="col-lg-12 col-xs-12">
                    <h5>{{$product->product_name}}</h5><hr>
                  </div>                
                  <div>
                  <p style="margin-left:30px;font-size:14px;">Code <span style="margin-left: 50px;">{{$product->product_code}}</span></p>
                  <p style="margin-left:30px;font-size:14px;">Price <span style="margin-left: 50px;">{{$product->product_price}} USD</span></p>
                  <p style="margin-left:30px;font-size:14px;">Branch <span style="margin-left: 38px;">{{$product->product_branch}}</span></p>
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
    </div>
</body>
</html>