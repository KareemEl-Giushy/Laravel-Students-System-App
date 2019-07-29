@extends('layouts.app')

@section('title', 'Add A New Subject')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Student : {{ $student->studentName }} With #ID : {{ $student->id }} <a href="{{ url('students' . '/' . $student->id) }}" class="float-right">Go Back</a></div>
    <div class="card-body">
      <form class="" action="{{ url('newsub' . '/' . $student->id) }}" method="post">
        <label for="">Choose Class :- </label>
        <select name="classe_id">
          @foreach($classes as $c)
            <option value="{{ $c->id }}">{{ $c->className }}</option>
          @endforeach
        </select>
        <input type="submit" value="Add" class='btn btn-success'>
        @csrf
      </form>
    </div>
  </div>
</div>

@endsection
