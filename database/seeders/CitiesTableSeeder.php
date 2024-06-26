<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\City;

class CitiesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $cities = [
            'Jakarta',
            'Surabaya',
            'Bandung',
            'Medan',
            'Bekasi',
            'Tangerang',
            'Depok',
            'Semarang',
            'Palembang',
            'Makassar',
            'Bogor',
            'Malang',
            'Yogyakarta',
            'Pekanbaru',
            'Denpasar',
            'Banjarmasin',
            'Pontianak',
            'Samarinda',
            'Balikpapan',
            'Padang',
            'Manado',
            'Mataram',
            'Ambon',
            'Batam',
            'Kendari',
            'Jambi',
            'Palu',
            'Sorong',
            'Mamuju',
            'Palangkaraya',
        ];

        foreach ($cities as $city) {
            City::create(['name' => $city]);
        }
    }
}
