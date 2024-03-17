<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    protected $guarded = [];
    use HasFactory;

     public function room(){
        return $this->belongsTo(Room::class, 'id', 'roomtype_id');
    }
}
