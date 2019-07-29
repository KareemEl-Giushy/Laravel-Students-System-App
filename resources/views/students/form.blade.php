<label for="studentName">Name :- </label>
<input type="text" name="studentName" value="{{ $student->studentName }}">
<label for="degree">Degree :- </label>
<input type="nubmer" name="degree" value="{{ $student->degree }}">
<label for="classe_id">Classes :- </label>
<select name="classe_id">
  @foreach($classes as $class)
    <option value="{{ $class->id }}">{{ $class->className }}</option>
  @endforeach
</select>
@csrf
