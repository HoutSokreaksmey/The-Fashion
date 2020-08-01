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
        @foreach($ads as $key => $ad)
          <div class="carousel-item {{$key == 0 ? 'active' : '' }}">
            <img src="{{asset('uploads/ads')}}/{{ $ad->image }}" class="d-block w-100"  alt="..."> 
          </div>
        @endforeach
    </div>
</div>