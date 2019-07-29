<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    protected $fillable = ['teacherName', 'classe_id'];

    public function classes() {

      return $this->belongsTo(Classe::class);
    }

    public function students() {
      
      return $this->belongsToMany(Student::class);
    }
}
