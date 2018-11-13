<?php
/**
 * Created by PhpStorm.
 * User: emodatt08
 * Date: 07/11/2018
 * Time: 12:20 PM
 */

namespace App\Helpers;


class GoogleMapsHelper
{
    static function findCountry($response){
        $result = ['name' => '', 'short_name' => ''];
        foreach ($response['results'][0]['address_components'] as $i => $component){
            if ($component['types'][0] == 'country'){
                $result['name'] = $component['long_name'];
                $result['short_name'] = $component['short_name'];
                break;
            }
        }
        if (empty($result['name'])) return false;
        return $result;
    }
    static function findCity($response){
        $result = ['name' => '', 'zip' => ''];
        foreach ($response['results'][0]['address_components'] as $i => $component){
            if ($component['types'][0] == 'administrative_area_level_1'){
                $result['name'] = $component['long_name'];
            }elseif ($component['types'][0] == 'postal_code'){
                $result['zip'] = $component['long_name'];
            }
        }
        if (empty($result['name'])){
            foreach ($response['results'][0]['address_components'] as $i => $component){
                if ($component['types'][0] == 'administrative_area_level_2'){
                    $result['name'] = $component['long_name'];
                }
            }
        }
        if (empty($result['name'])) return false;
        return $result;
    }
}