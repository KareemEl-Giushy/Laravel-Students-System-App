@extends('layouts.app')

@section('title', 'Dashboard')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Dashboard :-  <strong class="float-right">The Avarage : {{ $avg }}</strong></div>
    <div class="card-body">
      <div class="">Students</div>
      <table class="table">
        <tr>
          <th>#Id</th>
          <th>Name</th>
          <th>Class(es)</th>
          <th>Teacher(s)</th>
          <th>Degree</th>
        </tr>
        @foreach($students as $s)
        <tr>
          <td>{{ $s->id }}</td>
          <td><a href="{{ url('students' . '/' . $s->id) }}">{{ $s->studentName }}</a></td>
          <td>
            @foreach($s->classes as $c)
              {{ $c->className }} |
            @endforeach
          </td>
          <td>
            @foreach($s->classes as $c)
                @foreach($c->teachers as $t)
                  {{ $t->teacherName }} |
                @endforeach
            @endforeach
          </td>
          <td>
            {{ $s->degree }}
          </td>
        </tr>
        @endforeach
      </table>
      <a href="{{ url('students/create') }}" class="btn btn-primary">Add A Student</a>
      <a href="{{ url('teachers/create') }}" class="btn btn-primary">Add A Teacher</a>
      <a href="{{ url('classes/create') }}" class="btn btn-primary">Add A Class</a>
    </div>
  </div>
</div>

@endsection
