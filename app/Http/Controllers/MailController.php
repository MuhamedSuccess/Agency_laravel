<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Mail;

use App\Models\Trip;
use App\Models\Guide;
use App\Models\User;
use App\Models\Reservation;

class MailController extends Controller
{


    //send trip confirmation details to guide, with all data realed to the trip
    // including tourists data and so on
//    public function send_TC_to_guide(Request $request, $trip_id, $user_id, $reservation_id)
//    {
//        $subject = $request->input('subject');
//        $from = $request->inuput('');
//        $to = $request->inuput('to');
//        $body = $request->inuput('body');
////        $template;
//
//        $trip = Trip::find($trip_id);
//        $guide = DB::select('select * from guide where guide.id = '.$trip->guide_id.'');

//        $user = User::find($user_id);

//        $reservation_data = Reservation::find($reservation_id);
//
//        if (Request::get('body') != null)
//            //this array data will be sent to the mail page
//            $data = array(
//                'bodyMessage' => Request::get('message'),
//                'trip' => $trip,
//                'user' => $use,
//                'reservation_data' => $reservation_data,
//            );
//        else
//            $data[] = '';
//        Mail::send('pages.messanger.email', $data, function ($message) {
//
//            $message->from($from, 'Just Laravel');
//
//            $message->to(Request::get('to'))->subject($subject);
//        });
//        return Redirect::back()->withErrors([
//            'Your email has been sent successfully'
//        ]);
//
//        return view('pages.travel.index', compact('trips', 'places'));
//
//    }

    //send message to any user

public function send_message(Request $request)
{
    $subject = $request->input('subject');
        $from = "Mohamed.adel01@fci.helwan.edu.eg";
        $to = $request->input('to');
        $body = htmlspecialchars_decode($request->input('body'));
        $app_name = "Tourism Agency";
//        $data = array("");

//        $user = User::find($user_id);

        if ($body != null)
            {
                 //this array data will be sent to the mail page
                        $data = array(
                            'bodyMessage' => $body
                        );
                        Mail::send('pages.messanger.email', $data, function ($message) use ($from, $to, $subject, $app_name)
            {

                $message->from($from, $app_name);

                $message->to($to)->subject($subject);
            });
            }


//        else
//            $data[] = array("");

        return  back()->withErrors([
            'Your email has been sent successfully'
        ]);

//        return view('pages.messanger.home');


}


//public function SendEmail(Request $request){
//    if (Request::get('message') != null)
//        $data = array(
//            'bodyMessage' => Request::get('message')
//        );
//    else
//        $data[] = '';
//    Mail::send('pages.messanger.email', $data, function ($message) {
//
//        $message->from('Mohamed.adel01@fci.helwan.edu.eg', 'Just Laravel');
//
//        $message->to(Request::get('toEmail'))->subject('Just Laravel demo email using SendGrid');
//    });
//    return Redirect::back()->withErrors([
//        'Your email has been sent successfully'
//    ]);
//
//}



}
