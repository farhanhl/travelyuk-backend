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

    public function scopeLatestFirst($query)
{
    return $query->orderBy('date', 'desc')->orderBy('departure_time', 'desc');
}


    public function scopeByCitiesAndDate($query, $originCityId, $destinationCityId, $date)
    {
        return $query->where('origin_city_id', $originCityId)
                    ->where('destination_city_id', $destinationCityId)
                    ->whereDate('date', $date)
                    ->whereTime('departure_time', '>=', now()->format('H:i:s'));
    }
}
