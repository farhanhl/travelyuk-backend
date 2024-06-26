<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable, HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'email', 'password', 'nama_lengkap', 'jenis_kelamin', 'nomor_telfon', 'is_admin',
    ];

    // Menambahkan accessor 'role' secara otomatis dengan setiap instance User
    // protected $appends = ['role'];

    /**
     * Accessor untuk atribut 'role' yang mengembalikan 'Admin' atau 'User'
     *
     * @return string
     */
    // public function getRoleAttribute()
    // {
    //     return $this->is_admin ? true : false;
    // }

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'is_admin' => 'boolean',
    ];
}
