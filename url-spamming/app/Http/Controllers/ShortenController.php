<?php

namespace App\Http\Controllers;

use App\Models\Shorten;
use Illuminate\Http\Request;

class ShortenController extends Controller
{
    public function index()
    {
        // $url = Shorten::get();
        $url = Shorten::latest()->take(3)->get();

        return response()->json($url);
    }


    public function store(Request $request){
        
         Shorten::create([
                'url' => $request-> url,
                'slug' => $request -> slug,
                'current_time' => $request -> curr_time,
               ]);
         
          return response()->json([
                'message' => 'Create Shorten URL Successfully'
            ]);
    } 
}
