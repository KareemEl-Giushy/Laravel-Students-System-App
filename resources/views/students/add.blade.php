@extends('layouts.app')

@section('title', 'Add A Student')

@section('content')

  <div class="container">
    <div class="card">
      <div class="card-header">Add A Student <a href="{{ url('students') }}" class='float-right'>Go To The Dashboard</a></div>
      <div class="card-body">
        <form class="" action="{{ url('students') }}" method="post">
          @method('POST')
          <label for="studentName">Name :- </label>
          <input type="text" name="studentName" value="{{ old('studentName') }}">
          <label for="degree">Degree :- </label>
          <input type="nubmer" name="degree" value="{{ old('degree') }}">
          <label for="classe_id">Classes :- </label>
          <select name="classe_id">
            @foreach($classes as $class)
              <option value="{{ $class->id }}">{{ $class->className }}</option>
            @endforeach
          </select>
          @csrf
          <input type="submit" class="btn btn-success">
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
