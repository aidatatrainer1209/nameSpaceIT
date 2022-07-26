<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UsersController extends Controller
{
   
    public function index()
    {
        //
    }


    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|unique:users,email|max:191',
            'password' => 'required|min:6',
        ]);
 
        if ($validator->fails()) {
            return response()->json([
                'validation_error' => $validator->message()
            ]);
        }else{
           $user =  User::create([
                'email' => $request-> email,
                'password' => Hash::make($request -> password),
               ]);
          $token =   $user -> createToken($user->email.'_Token')->plainTextToken;

          return response()->json([
                "status"=>200,
                "email"=>$user->email,
                "token"=>$token,
                'message' => 'Register Successfully'
            ]);
        }

    }

    
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|max:191',
            'password' => 'required',
        ]);
 
        if ($validator->fails()) {
            return response()->json([
                'validation_error' => $validator->message()
            ]);
        }
        
        else{
           $user =  User::where('email', $request->email)->first();

           if( ! $user || ! Hash::check($request->password, $user->password)) 
           {
                return response()->json([
                    'status'=> 401,
                    'message' =>'Invalid Credentials',
                ]);
            }     
            else
            {
            $token =   $user -> createToken($user->email.'_Token')->plainTextToken;

            return response()->json([
                  "status"=>200,
                  "email"=>$user->email,
                  "token"=>$token,
                  'message' => 'Logged In  Successfully'
              ]);
           }
        }
    }

}
