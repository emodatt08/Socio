<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\CountryResource;
use App\Country;

class CountriesController extends Controller
{
  
    public function storeCountryData(Request $request){
            $countries = $request->country;
            foreach($countries as $country){
                    Country::create($this->countryData($country));
            }
             return CountryResource::collection(Country::all());

    }


    private function countryData($country){
        return [
            'code3l' => $country['code3l'],
            'code2l' => $country['code2l'],
            'name' => $country['name'],
            'name_official' => $country['name_official'],
            'flag32' => $country['flag_32'],
            'flag128' => $country['flag_128'],
            'latitude' => $country['latitude'],
            'longitude' => $country['longitude'],
            'zoom' => $country['zoom'],
            'status'=> $country['enabled']
        ];
    }


    public function phoneCodes(Request $request){
        $dialCodes = $request->codes;
         foreach($dialCodes as $dialCode){
                    Country::where('code2l', $dialCode['code'])->update(['dial_code' =>  $dialCode['dial_code']]);
            }
            return response()->json(['data' => Country::all()]);
    }
}
