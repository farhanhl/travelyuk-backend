<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Schedule;
use App\Models\City;
use Carbon\Carbon;

class SchedulesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cities = City::all();

        foreach ($cities as $originCity) {
            foreach ($cities as $destinationCity) {
                if ($originCity->id != $destinationCity->id) {
                    Schedule::create([
                        'origin_city_id' => $originCity->id,
                        'destination_city_id' => $destinationCity->id,
                        'date' => Carbon::now()->addDays(rand(1, 30)),
                        'departure_time' => Carbon::createFromTime(rand(6, 23), rand(0, 59)),
                        'bus_name' => 'Bus ' . rand(100, 999),
                        'price' => rand(50000, 200000),
                    ]);
                }
            }
        }
    }
}
