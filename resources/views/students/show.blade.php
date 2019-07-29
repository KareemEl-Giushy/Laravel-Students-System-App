@extends('layouts.app')

@section('title', 'Show Student')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Show Student : <strong>{{ $student->studentName }}</strong> With #ID : <strong>{{ $student->id }}</strong> <a href="{{ url('students') }}" class="float-right">Go To The Dashboard</a></div>
    <div class="card-body">
      <a href="{{ url('newsub' . '/' . $student->id) }}" class="btn btn-primary">Add A Subject</a>
      <form class="d-inline" action="{{ url('students' . '/' . $student->id) }}" method="post">
        @method('DELETE')
        @csrf
        <input type="submit" class="btn btn-danger" value="Delete Student">
      </form>
      <a href="{{ url('students' . '/' . $student->id . '/edit') }}" class='btn btn-secondary'>Edit Student</a>
      <div class="d-inline float-right">
        <strong>Degree : {{ $student->degree }}</strong>
      </div>
      <table class="table mt-3">
        <tr>
          <th>Class' Name</th>
          <th>Class' Teacher</th>
          <th>Controles</th>
        </tr>
        @foreach($student->classes as $class)
        <tr>
          <td>
              {{ $class->className }}
          </td>
          @foreach($student->teachers as $t)
            @if($t->classe_id == $class->id)
              <td>
                {{ $t->teacherName }}
              </td>
            @endif
          @endforeach
          <td>
            <a href="{{ url('chteacher/' . $student->id . '/' . $class->id) }}">Choose<a>
          </td>
        </tr>
        @endforeach
      </table>
    </div>
  </div>
</div>

@endsection
