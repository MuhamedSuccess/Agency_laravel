<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\places;

class placesController extends Controller
{
    public function index()
    {
        return view('places');
    }

    public function store(Request $request)
    {
        $place = new places();

        $place->name = $request->input('name');
        $place->city = $request->input('city');
        $place->country = $request->input('country');
        $place->description = $request->input('description');

        if ($request->hasfile('image')){
            $file =   $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/employee/',$filename);
            $place->image = $filename ; 
        }else{
            return $request;
            $place->image = '' ; 
        }
        $place->save();
        return view('places')->with('place',$place);        
    }

    public function display()
    {
        $place = places::all();

        return view('fetchplaces')->with('place',$place);  
    }

    public function edit($id)
    {
        $place = places::find($id);

        return view('placeupdateform')->with('place',$place);  
    }

    public function show($id)
    {
        $place = places::find($id);

        return view('pages.attractions.place-details')->with('place',$place);  
    }


    public function update(Request $request, $id)
    {
        $place = places::find($id);

        $place->name = $request->input('name');
        $place->city = $request->input('city');
        $place->country = $request->input('country');
        $place->description = $request->input('description');

        if ($request->hasfile('image')){
            $file =   $request->file('image');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/employee/',$filename);
            $place->image = $filename ; 
        }
        $place->save();
        //$place = places::all();
        return redirect('fetchplaces')->with('place',$place);  
    }
    public function delete($id)
    {
        $place = places::find($id);
        $place->delete();

        return redirect('fetchplaces')->with('place',$place);  
    }
}
