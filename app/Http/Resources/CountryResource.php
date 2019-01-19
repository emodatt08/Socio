<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CountryResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
       return [
            'id' => $this->id,
            'code3l' => $this->code3l,
            'code2l' => $this->code2l,
            'name' => $this->name,
            'name_official' => $this->name_official,
            'flag_32' => $this->flag32,
            'flag_128' => $this->flag128,
            'latitude' => $this->latitude,
            'longitude' => $this->longitude,
            'zoom' => $this->zoom,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ];
    }
}
