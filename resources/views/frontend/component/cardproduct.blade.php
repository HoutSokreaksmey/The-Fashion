<div class="col-lg-3 col-md-6 col-12">
    <div class="product-grid3">
        <div class="product-image3">
            <a href="{{route('product_detail',$products->id)}}">
                <img class="pic-1" class="img-fluid" src="{{asset('uploads/products')}}/{{ $products->product_img }}">
            </a>
        </div>
        <div class="product-content">
            <h3 style="margin-top: 5px; margin-bottom: 5px;" class="producttitle">{{ $products->product_code }}</h3>
            <div style="margin-top:-5px;" class="productprice">{{ $products->product_price }} USD</div>
        </div>
    </div>
</div>