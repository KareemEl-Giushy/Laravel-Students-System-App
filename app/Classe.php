<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classe extends Model
{

  protected $fillable = ['className'];

  public function students() {

    return $this->belongsToMany(Student::class);
  }

  public function teachers() {

    return $this->hasMany(Teacher::class);
  }
}
