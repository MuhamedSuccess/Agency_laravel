<?php
require 'https://pixabay.com/api/?key=16144732-199be4802fef7d48372bde862&q=paris&image_type=photo&pretty=true';
$query = [
    "engine" => "google",
    "ijn" => "0",
    "q" => "paris",
    "google_domain" => "google.com",
    "tbs" => "itp:photos,isz:l",
    "tbm" => "isch",
    "api_key" => "secret_api_key"
];

$client = new GoogleSearchResults();
$results = $client->json($query);

console.log($results);

