@extends('layouts.app')

@section('title', 'Choose Your Teacher')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Choose Your <strong>{{ $class->className }}</strong> Teacher :- <a href="{{ url('students/' . $student->id) }}" class="float-right">Go Back</a></div>
    <div class="card-body">
      <h3 class="my-2">{{ $class->className }} Teachers :- </h3>
      <form class="" action="{{ url('chteacher/' . $student->id) }}" method="post">
        <label for="teacher_id">Choose Teacher :-</label>
        <select class="" name="teacher_id">
          @foreach($class->teachers as $t)
            <option value="{{ $t->id }}">{{ $t->teacherName }}</option>
          @endforeach
        </select>
        @csrf
        <input type="submit" value="Choose" class='btn btn-success'>
      </form>
    </div>
  </div>
</div>

@endsection
