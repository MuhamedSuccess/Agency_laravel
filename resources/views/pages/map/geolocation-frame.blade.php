<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
<style>
    iframe 
{

    margin: 0px; 
 padding: 0px; 
 height: 400px; 
 border: none;    
 display: block; 
 width: 100%; 
 border: none; 
 overflow-y: auto; 
 overflow-x: hidden;
}
</style>
</head>
<body>

<iframe src="http://localhost:8000/map" allowfullscreen="true
                                                         "
        frameborder="0" 
    marginheight="0" 
    marginwidth="0" 
    width="100%" 
    height="100%" 
    scrolling="auto"
        ></iframe>

</body>        
</html>