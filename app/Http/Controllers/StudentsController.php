<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;
use App\Classe;
// use App\Teacher;

class StudentsController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index() {
        // dd(Student::find(1)->classes);
        // echo "<pre>";
        // foreach (Student::find(1)->classes as $c) {
        //   echo $c->className;
        // }
        // echo "</pre>";

        // dd(Classe::find(1)->teachers);
        // dd(Student::find(1)->classes);

        // dd(Student::find(1)->classes[0]->teachers); testing to understand
        $avg = Student::avg('degree');

        return view('students.dashboard')->withStudents(Student::all())->withAvg($avg);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {

      return view('students.add')->withClasses(Classe::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

      $data = $request->validate([
        'studentName' => 'required|min:3',
        'degree' => 'required|numeric'
      ]);

      $student_class = $request->validate([
        'classe_id' => 'required'
      ]);

      // $student_class['student_id'] = Student::select('id')->orderby('created_at', 'desc')->first()->id ?? 1;
      // dd($student_class);
      $student = Student::create($data); // we made it that way to fetch the user id that just inserted

      // dd($student_class);
      // dd($student->id); Important to understand the consept

      $student->classes()->attach($student_class['classe_id']);

      return redirect('students');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student) {

      return view('students.show')->withStudent($student);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Student $student) {

      return view('students.edit',[
      'student' => $student,
      'classes' => []
    ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Student $student) {
        $data = $request->validate([
          'studentName' => 'required|min:3',
          'degree' => 'required|numeric'
        ]);

        $student->update($data);

        return redirect('students/' . $student->id . '/edit');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Student $student) {

      $student->delete();

      return redirect('students');
    }

    /**
     * Custom Functions For more Missions
     */

     public function addASubject(Student $student) {

      return view('students.newsub', [
        'student' => $student,
        'classes' => Classe::all()
      ]);
     }

     public function storeSubject(Student $student, Request $request) {

       $data = $request->validate([
         'classe_id' => 'required'
       ]);

       $student->classes()->attach($data);

       return redirect('newsub/' . $student->id);
     }

     public function chooseTeacher(Student $student, Classe $classe) {

       // dd($student->teacher);
       // dd($classe->teachers);
       foreach ($student->classes as $c) {
         if ($c->id == $classe->id) {

           return view('students.chooseTeacher')->withStudent($student)->withClass($classe);

         }
       }

       return redirect('students');
     }

     public function storeTeacher(Student $student, Request $request) {

       $data = $request->validate([
         'teacher_id' => 'required'
       ]);

       $student->teachers()->attach($data);

       return redirect('students/' . $student->id);
     }

}
