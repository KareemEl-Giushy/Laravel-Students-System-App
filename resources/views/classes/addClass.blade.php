@extends('layouts.app')

@section('title', 'Add A Class')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header">Add A Class :- <a href="{{ url('students') }}" class="float-right">Go To The Dashboard</a></div>
    <div class="card-body">
      <form class="" action="{{ url('classes') }}" method="post">
        <label for="className">Class Name :- </label>
        <input type="text" name="className" value="{{ old('className') }}">
        <input type="submit" class="btn btn-success">
        @csrf
      </form>
      <div class="">
        {{ $errors->first('className') }}
      </div>
      <div class="">
        {{ $errors->first('className') }}
      </div>
      <table class="mt-3 table">
        <tr>
          <th>#ID</th>
          <th>Class Name</th>
        </tr>
        @foreach($classes as $c)
          <tr>
            <td>{{ $c->id }}</td>
            <td>{{ $c->className }}</td>
          </tr>
        @endforeach
      </table>
    </div>
  </div>
</div>

@endsection
