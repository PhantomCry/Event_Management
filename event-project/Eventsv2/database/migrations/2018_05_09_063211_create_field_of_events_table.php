<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFieldOfEventsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('field_of_events', function (Blueprint $table) {
            $table->unsignedInteger('eID');
            $table->unsignedInteger('fID');
            
            $table->foreign('eID')->references('idevents')->on('events');
            $table->foreign('fID')->references('idfield')->on('fields');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('field_of_events');
    }
}
