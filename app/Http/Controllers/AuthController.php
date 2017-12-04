<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function register(Request $request){
        $email = $request->email;
        $password = $request->password;
        $name = $request->name;
        $message = null;

        $hashedPassword = Hash::make($password);

        $isUsed = DB::table('users')
                            ->where('email',$email)
                            ->first();
        
        if(!$isUsed){
            DB::table('users')->insert([
                'name' => $name,
                'password' => $hashedPassword,
                'email' => $email
            ]);

            $message = "success";
        } else {
            $message = "used";
        }
        
        return response()->json(['message' => $message]);
    }

    public function login(Request $request){
        $email = $request->email;
        $password = $request->password;
        $message = null;

        $userPassword = DB::table('users')
                            ->where('email',$email)
                            ->value('password');
        
        if(Hash::check($password,$userPassword)){
            $user = DB::table('users')
                            ->where('email',$email)
                            ->first();

            $message = "success";
        } else {
            $message = "failed";
        }
        
        return response()->json(['message' => $message]);
    }
}
