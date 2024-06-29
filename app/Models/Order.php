<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Order extends Model
{
    use HasFactory;

    protected $with = ['user', 'schedule'];

    protected $fillable = [
        'user_id',
        'schedule_id',
        'pax',
        'price',
        'is_paid',
        'is_payment_accepted',
        'is_refund',
        'is_refund_accepted'
    ];

    protected $casts = [
        'is_paid' => 'boolean',
        'is_payment_accepted' => 'boolean',
        'is_refund' => 'boolean',
        'is_refund_accepted' => 'boolean',
    ];

    public function scopeOfUser(Builder $query, $userId)
    {
        return $query->where('user_id', $userId);
    }


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function schedule()
    {
        return $this->belongsTo(Schedule::class);
    }
}
