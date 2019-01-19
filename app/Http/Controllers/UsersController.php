<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Country;

class UsersController extends Controller
{
        public function index()
        {
            $countries = Country::select('dial_code', 'name', 'flag32')->get();
            return view('layouts.guests', compact('countries'));
        }
}
