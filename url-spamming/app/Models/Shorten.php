<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shorten extends Model
{
    use HasFactory;
    protected $table="shorten_url";
    protected $fillable = [
        'url',
        'slug',
        'current_time',
    ];
}
