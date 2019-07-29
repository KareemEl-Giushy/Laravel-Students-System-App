<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = ['studentName', 'degree'];
  
    public function classes() {

      return $this->belongsToMany(Classe::class);
    }

    public function teachers() {

      return $this->belongsToMany(Teacher::class);
    }
}
