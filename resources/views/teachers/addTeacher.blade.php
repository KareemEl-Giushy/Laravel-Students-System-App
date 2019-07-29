@extends('layouts.app')

@section('title', 'Add A Class')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Add A Class :- <a href="{{ url('students') }}" class="float-right">Go To The Dashboard</a></div>
    <div class="card-body">
      <form class="" action="{{ url('teachers') }}" method="post">
        <label for="teacherName">Teacher Name :- </label>
        <input type="text" name="teacherName" value="{{ old('className') }}">
        <label for="classe_id">Teacher's Class :- </label>
        <select class="" name="classe_id">
          @foreach($classes as $class)
            <option value="{{ $class->id }}">{{ $class->className }}</option>
          @endforeach
        </select>
        <input type="submit" class="btn btn-success">
        @csrf
      </form>
      <div class="">
        {{ $errors->first('teacherName') }}
      </div>
      <div class="">
        {{ $errors->first('classe_id') }}
      </div>
      <table class='table mt-4'>
        <tr>
          <th>Teacher</th>
          <th>Subject</th>
        </tr>
        @foreach($classes as $c)
          @foreach($c->teachers as $t)
            <tr>
              <td>{{ $t->teacherName }}</td>
              <td>{{ $c->className }}</td>
            </tr>
          @endforeach
        @endforeach
      </table>
    </div>
  </div>
</div>

@endsection
