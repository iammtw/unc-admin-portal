<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('program_id');
            $table->integer('course_provider_id');
            $table->integer('registration_no');
            $table->string('registration_duration');
            $table->string('enrolment_date');
            $table->string('completion_date');
            $table->string('enrolment_major');
            $table->string('full_name');
            $table->string('registration_location');
            $table->string('nationality');
            $table->string('dob_day');
            $table->string('dob_month');
            $table->string('dob_year');
            $table->string('address');
            $table->string('city');
            $table->string('state');
            $table->string('country');
            $table->string('zipcode');
            $table->string('phone');
            $table->string('status');
            $table->string('approved');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
