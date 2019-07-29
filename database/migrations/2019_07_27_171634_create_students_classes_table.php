<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students_classes', function (Blueprint $table) {
            $table->unsignedBigInteger('class_id');
            $table->unsignedBigInteger('student_id');
            $table->unsignedBigInteger('teacher_id');
            $table->timestamps();
        });

        // Schema::table('students_classes', function($table) {
        //   $table->foreign('class_id')->references('classes')->on('id')->onDelete('cascade');
        //   $table->foreign('student_id')->references('students')->on('id')->onDelete('cascade');
        //   $table->foreign('teacher_id')->references('teachers')->on('id')->onDelete('cascade');
        //
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students_classes');
    }
}
