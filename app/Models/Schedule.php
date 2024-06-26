<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    use HasFactory;

    protected $with = ['originCity', 'destinationCity'];

    protected $fillable = [
        'origin_city_id',
        'destination_city_id',
        'date',
        'departure_time',
        'bus_name',
        'price',
    ];

    public function originCity()
    {
        return $this->belongsTo(City::class, 'origin_city_id');
    }

    public function destinationCity()
    {
        return $this->belongsTo(City::class, 'destination_city_id');
    }
}
