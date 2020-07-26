<!DOCTYPE html>
<body>
{{--	<h2>Demo mail from JustLaravel</h2>--}}
{{--    <img src="https://i.pinimg.com/originals/0f/29/58/0f295874b9dbfb9c3fe77356a67fd7cd.jpg">--}}

	@if(isset($bodyMessage))
	<div class="w3-container w3-orange">

        <p>{{$bodyMessage}}</p>
{{--		<p>--}}
{{--			<b>The data you have entered is :</b><span--}}
{{--				style="color: #e36c39; background: #EEE";> {{ $bodyMessage }}</span>--}}
{{--		</p>--}}
	</div>
	@endif


</body>
</html>
