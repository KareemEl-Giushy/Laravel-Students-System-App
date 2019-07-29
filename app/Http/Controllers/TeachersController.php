<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classe;
use App\Teacher;

class TeachersController extends Controller
{
    public function create() {
      // dd();
      return view('teachers.addTeacher')->withClasses(Classe::all());
    }

    public function store(Request $request) {
      $data = $request->validate([
        'teacherName' => 'required|min:3',
        'classe_id' => 'required'
      ]);

      Teacher::create($data);

      return redirect('teachers/create');
    }

}
