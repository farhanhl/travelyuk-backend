<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(CitiesTableSeeder::class);
        User::create([
            'email' => "aryoencok@gmail.com",
            'password' => Hash::make('admin'),
            'nama_lengkap' => "Aryo Yudho",
            'jenis_kelamin' => "Laki-laki",
            'nomor_telfon' => "6282298036316",
            'is_admin' => true,
        ]);
        // $this->call(SchedulesTableSeeder::class);
    }
}
