<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Notifications\CommentReplied;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use App\Models\Trip;
use Illuminate\Http\Request;
use Auth;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'body' => 'required',
        ]);

        $input = $request->all();
        $user = \Auth::user();
        $input['user_id'] = $user->id;
        $input['date'] = now();

        // $user_id = stripslashes($input['user_id']);


        // DB::insert('INSERT INTO `comment` (`user_id`, `trip_id`, `parent_id`, `body`, `date`) VALUES ('.$user_id.', '.$input['trip_id'].', 0, "'.$input['body'].'", "'.now().'")', [1, 'Dayle']);

        // DB::insert('INSERT INTO `comment` (`user_id`, `trip_id`, `parent_id`, `body`, `date`) VALUES (3, 28, 0, "hena mohamed", CURRENT_TIMESTAMP)', [1, 'Dayle']);



        // $input['date'] = Time::now()->timestamp;

        // $input['date'] = new DateTime();


        // create the new record.
        // this instance will only know about the fields you set.
        $comment =  Comment::create($input);
        // re-retrieve the instance to get all of the fields in the table.
        $comment = $comment->fresh();


        // \Auth::user()->notify(new CommentReplied($comment));


        // return back();
        return response()->json(

            [
                'data' => $comment,
                'message' => "Trip Created Successfully",
                // 'redirect' => ['route' => '/trip/' . $comment->trip_id]
            ]
        );
    }

    public function displayComments($id)
    {

        try {
            $comments = Trip::find($id);
            return view('comment.commentsDisplay')->with('comments', $comments);
        } catch (ModelNotFoundException $exception) {
            abort(404);
        }
    }
}