@extends('layouts.app')

@section('title', 'Edit Student')

@section('content')

<div class="container">
  <div class="card">
    <div class='card-header'>Edit Student : <strong>{{ $student->studentName }}</strong> #Student Number : <strong>{{ $student->id }}</strong> <a href="{{ url('students' . '/' . $student->id) }}" class='float-right'>Go Back</a></div>
    <div class="card-body">
      <form class="" action="{{ url('students' . '/' . $student->id) }}" method="post">
        @method('PATCH')
        <label for="studentName">Name :- </label>
        <input type="text" name="studentName" value="{{ $student->studentName }}">
        <label for="degree">Degree :- </label>
        <input type="nubmer" name="degree" value="{{ $student->degree }}">
        @csrf
        <input type="submit" value="Edit" class='btn btn-primary'>
      </form>
      <div class="">
        {{ $errors->first('studentName') }}
      </div>
      <div class="">
        {{ $errors->first('degree') }}
      </div>
    </div>
  </div>
</div>

@endsection
