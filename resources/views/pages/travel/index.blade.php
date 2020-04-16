@extends('layouts.travel')

@section('template_title')
    
@endsection

@section('head')
@endsection

@section('content')
   
 
	

	@if(count($trips) >1 )  
		@foreach($trips as $trip)
			<div id="fh5co-tours" class="fh5co-section-gray">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>Hot Tours</h3>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
								<div href="#">
								<img src="{{asset('travel/images/place-1.jpg')}} " alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
									<div class="desc">
										<span></span>
										<h3>{{$trip->name}}</h3>
										<span>3 nights + Flight 5*Hotel</span>
										<span class="price">$1,000</span>
										<a class="btn btn-primary btn-outline" href="/trip/{{$trip->id}}">Go Details <i class="icon-arrow-right22"></i></a>
									</div>
								</div>
							</div>
							
							<div class="col-md-12 text-center animate-box">
								<p><a class="btn btn-primary btn-outline btn-lg" href="#">See All Offers <i class="icon-arrow-right22"></i></a></p>
							</div>
						</div>
					</div>
				</div>
		@endforeach	
	@else
	@endif		




@endsection
