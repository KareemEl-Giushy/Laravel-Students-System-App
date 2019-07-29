<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classe;

class ClassesController extends Controller
{
    public function create() {

      return view("classes.addClass")->withClasses(Classe::all());
    }

    public function store(Request $request) {

      $data = $request->validate([
        'className' => 'required|min:2'
      ]);

      Classe::create($data);

      return redirect('classes/create');
    }
}
