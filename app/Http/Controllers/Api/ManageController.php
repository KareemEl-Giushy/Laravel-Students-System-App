<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Student;

class ManageController extends Controller
{
    public function index() {

      return response()->json(['Status' => 'Success', 'Students' => Student::all()]);
    }
    public function show($id) {
      $student = Student::find($id);

      if(!$student) {

        return response()->json(['Status' => 'Failed', 'Error' => 'Student with id : ' . $id . ' Not Found']);
      }

      return response()->json(['Status' => 'Success', 'Student' => $student->toArray()]);
    }

    public function store(Request $request) {
      $data = $request->validate([
        'studentName' => 'required|min:5',
        'degree' => 'required|numeric'
      ]);

      $student = Student::create($data);
      if (!$student) {

        return response()->json([
          'Status' => 'Failed',
          'Error' => 'The Student Couldn\'t be add'
        ]);
      }

      return response()->json([
        'Status' => 'Success',
        'Student' => $student->toArray()
      ]);
    }

    public function destroy($id) {
      $student = Student::find($id);

      if(!$student) {

        return response()->json(['Status' => 'Failed', 'Error' => 'Student with id : ' . $id . ' Not Found']);
      }

      $student->delete();
      return response()->json(['Status' => 'Success']);
    }
}
