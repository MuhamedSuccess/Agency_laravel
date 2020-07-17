@extends('layouts.travel')

@section('template_title')
    
@endsection

@section('head')
@endsection

@section('content')
   
 


	

	@if(count($trips) >= 1 )  
	<section id="section-2"></section>
			
			<div id="fh5co-tours" class="fh5co-section-gray">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>Latest Trips</h3>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
						<div class="row">
						@foreach($trips as $trip)
							<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
								<div href="#" style="height: 300px">
								<img src="{{ asset('uploads/trips/'.$trip->trip_cover ) }}" alt="image" width="100%" style="height: 300px;"  class="img-responsive" >
									<div class="desc">
										<span></span>
										<h3>{{$trip->name}}</h3>
										<span>{{$trip->days}} nights At {{$trip->date }}</span>><br>
										<a class="btn btn-primary btn-outline" href="/trip/{{$trip->id}}">Go Details <i class="icon-arrow-right22"></i></a>

									</div>
								</div>

							</div>
						@endforeach
							<div class="col-md-12 text-center animate-box">
								<p><a class="btn btn-primary btn-outline btn-lg" href="#section-2">See All Offers <i class="icon-arrow-right22"></i></a></p>
							</div>
						</div>
					</div>
				</div>
		
	@else
		<p>no trips found</p>
	@endif		





	@if(count($places) >= 1 )  
	<section id="section-2"></section>
			
			<div id="fh5co-tours" class="fh5co-section-gray">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
								<h3>recent places</h3>
							</div>
						</div>
						<div class="row">
						@foreach($places as $place)
							<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
								<div href="#" style="height: 300px">
								
								<img src="{{ asset('uploads/employee/'.$place->image ) }}" alt="image" width="100%" style="height: 300px;"  class="img-responsive" >
									<div class="desc">
										<span></span>
										<h3>{{$place->name}}</h3>
										<span >{{$place->description}}</span>
										<span>===> {{$place->city}}  At {{$place->country }}</span><br>

										<a class="btn btn-primary btn-outline" href="/place/{{$place->id}}">Go Details <i class="icon-arrow-right22"></i></a>
									</div>
									
								</div>

							</div>
						@endforeach

						</div>
					</div>
				</div>
		
	@else
		<p>no places found</p>
	@endif	















@endsection
