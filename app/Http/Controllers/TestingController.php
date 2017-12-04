<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class TestingController extends Controller
{
    public function helloWord(){

        $testing = DB::table('testings')->get();
        $skills = array("programmer", "comedian", "coder", "hacker");
        $result = array("username" => "rere", "skills" => $skills);
        return response()->json($testing);
    }
}
