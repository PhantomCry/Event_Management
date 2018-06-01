<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTagOfEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tag_of_events', function (Blueprint $table) {
          $table->unsignedInteger('idevents');
          $table->unsignedInteger('tagID');
          
          $table->foreign('idevents')->references('idevents')->on('events');
          $table->foreign('tagID')->references('tagID')->on('tags');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tag_of_events');
    }
}
