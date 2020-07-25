<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
| Middleware options can be located in `app/Http/Kernel.php`
|
*/

// Homepage Route
Route::group(['middleware' => ['web', 'checkblocked']], function () {
    Route::get('/', 'WelcomeController@welcome')->name('welcome');
    Route::get('/trip', 'Trip\TripController@homepage')->name('trip');

    Route::get('/terms', 'TermsController@terms')->name('terms');
    Route::get('/map', 'WelcomeController@map')->name('map');
    Route::get('/trip-management', 'Trip\TripController@manage')->name('trip-management');
});



// Route::resource('/trip', 'Trip\TripController', [

//     'names' => [
//         'index'   => 'homepage',
//         'create' => '/trip/create',
//     ],


// ]);



Route::resource('customsearch', 'CustomSearchController');
Route::resource('TripSearch', 'TripSearchController');

Route::get('places', 'placesController@index');
Route::post('addplace', 'placesController@store')->name('addplace');
Route::get('fetchplaces', 'placesController@display');
Route::get('/editplace/{id}', 'placesController@edit');
Route::put('/updateplace/{id}', 'placesController@update');
Route::get('/deleteplace/{id}', 'placesController@delete');
Route::get('/place/{id}', 'placesController@show');


Route::get('/allreservation', 'reservecontroller@allreservation');
Route::get('/userreservation', 'reservecontroller@userreservation');


Route::get('/trip/reserve/{id}', 'reservecontroller@index');
Route::post('/confirm/{id}', 'reservecontroller@confirm');
Route::get('/reservationdetails/{id}', 'reservecontroller@getreservationDetails');
Route::get('/deletereserve/{id}', 'reservecontroller@delete');
//getReservation




Route::get('/laravel_google_chart', 'LaravelGoogleGraph@index');
Route::get('/laravel_google_chart2', 'LaravelGoogleGraph2@index');
Route::get('/laravel_google_chart3', 'LaravelGoogleGraph3@index');




//trip routes
Route::get('/trip/create', 'Trip\TripController@create')->name('trip/create');
Route::post('/trip-create', 'Trip\TripController@store')->name('trip-create');




Route::get('/trip/{id}', [
    'as' => 'trip.show',
    'uses' => 'Trip\TripController@show',
]);

Route::delete('/trip/{id}', [
    'as' => 'trip.delete',
    'uses' => 'Trip\TripController@delete',
]);

Route::post('comment/create', 'CommentController@store')->name('comments.store');



Route::get('/map-frame', function () {
    return view('pages.map.geolocation-frame');
});


Route::get('/place-images', function () {
    return view('pages.map.place-images');
});



//Notification routes
Route::get('/notification-send', function () {
    event(new App\Events\MyEvent('notification from laravel'));
    return "Event has been sent!";
});

Route::get('/display', function () {
    return view('pages.notifications.welcome');
});



// mail routes

Route::get('/mail', function () {
    return view('pages.messanger.home');
});

// Route::get ( '/mail', function () {
// 	return view ( 'pages.messanger.mail' );
// } );

Route::any('sendemail', function () {
    if (Request::get('message') != null)
        $data = array(
            'bodyMessage' => Request::get('message')
        );
    else
        $data[] = '';
    Mail::send('pages.messanger.email', $data, function ($message) {

        $message->from('ahmedadelfcih182@gmail.com', 'Just Laravel');

        $message->to(Request::get('toEmail'))->subject('Just Laravel demo email using SendGrid');
    });
    return Redirect::back()->withErrors([
        'Your email has been sent successfully'
    ]);
});





//Tourist Places Routes
// Route::get ( '/attractions', function () {
// 	return view ( 'pages.tourist_places.home' );
// } );



Route::resource('attractions', 'Attractions\AttractionsController', [
    'names' => [
        'index'   => 'attractions',
        'destroy' => 'attraction.destroy',
    ],
    'except' => [
        'deleted',
    ],
]);



// Authentication Routes
Auth::routes();

// Public Routes
Route::group(['middleware' => ['web', 'activity', 'checkblocked']], function () {

    // Activation Routes
    Route::get('/activate', ['as' => 'activate', 'uses' => 'Auth\ActivateController@initial']);

    Route::get('/activate/{token}', ['as' => 'authenticated.activate', 'uses' => 'Auth\ActivateController@activate']);
    Route::get('/activation', ['as' => 'authenticated.activation-resend', 'uses' => 'Auth\ActivateController@resend']);
    Route::get('/exceeded', ['as' => 'exceeded', 'uses' => 'Auth\ActivateController@exceeded']);

    // Socialite Register Routes
    Route::get('/social/redirect/{provider}', ['as' => 'social.redirect', 'uses' => 'Auth\SocialController@getSocialRedirect']);
    Route::get('/social/handle/{provider}', ['as' => 'social.handle', 'uses' => 'Auth\SocialController@getSocialHandle']);

    // Route to for user to reactivate their user deleted account.
    Route::get('/re-activate/{token}', ['as' => 'user.reactivate', 'uses' => 'RestoreUserController@userReActivate']);
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'checkblocked']], function () {

    // Activation Routes
    Route::get('/activation-required', ['uses' => 'Auth\ActivateController@activationRequired'])->name('activation-required');
    Route::get('/logout', ['uses' => 'Auth\LoginController@logout'])->name('logout');
});

// Registered and Activated User Routes
Route::group(['middleware' => ['auth', 'activated', 'activity', 'twostep', 'checkblocked']], function () {

    //  Homepage Route - Redirect based on user role is in controller.
    Route::get('/home', ['as' => 'public.dashboard',   'uses' => 'UserController@index'])->name('home');
    Route::get('/old-home', ['as' => 'public.home',   'uses' => 'UserController@index_old']);

    // Show users profile - viewable by other users.
    Route::get('profile/{username}', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@show',
    ]);
});

// Registered, activated, and is current user routes.
Route::group(['middleware' => ['auth', 'activated', 'currentUser', 'activity', 'twostep', 'checkblocked']], function () {

    // User Profile and Account Routes
    Route::resource(
        'profile',
        'ProfilesController',
        [
            'only' => [
                'show',
                'edit',
                'update',
                'create',
            ],
        ]
    );
    Route::put('profile/{username}/updateUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserAccount',
    ]);
    Route::put('profile/{username}/updateUserPassword', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@updateUserPassword',
    ]);
    Route::delete('profile/{username}/deleteUserAccount', [
        'as'   => '{username}',
        'uses' => 'ProfilesController@deleteUserAccount',
    ]);

    // Route to show user avatar
    Route::get('images/profile/{id}/avatar/{image}', [
        'uses' => 'ProfilesController@userProfileAvatar',
    ]);

    // Route to upload user avatar.
    Route::post('avatar/upload', ['as' => 'avatar.upload', 'uses' => 'ProfilesController@upload']);
});

// Registered, activated, and is admin routes.
Route::group(['middleware' => ['auth', 'activated', 'role:admin', 'activity', 'twostep', 'checkblocked']], function () {
    Route::resource('/users/deleted', 'SoftDeletesController', [
        'only' => [
            'index', 'show', 'update', 'destroy',
        ],
    ]);

    Route::resource('users', 'UsersManagementController', [
        'names' => [
            'index'   => 'users',
            'destroy' => 'user.destroy',
        ],
        'except' => [
            'deleted',
        ],
    ]);
    Route::post('search-users', 'UsersManagementController@search')->name('search-users');

    Route::resource('themes', 'ThemesManagementController', [
        'names' => [
            'index'   => 'themes',
            'destroy' => 'themes.destroy',
        ],
    ]);

    Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
    Route::get('routes', 'AdminDetailsController@listRoutes');
    Route::get('active-users', 'AdminDetailsController@activeUsers');
});

Route::redirect('/php', '/phpinfo', 301);
