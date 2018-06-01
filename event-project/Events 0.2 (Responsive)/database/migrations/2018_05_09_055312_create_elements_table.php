<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateElementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('elements', function (Blueprint $table) {
            $table->increments('elementId');
            $table->mediumText('text');
            $table->string('document', 250);
            $table->string('media', 250);
            $table->unsignedInteger('fieldID');
            $table->unsignedInteger('eventID');

            $table->foreign('fieldID')->references('idfield')->on('fields');
            $table->foreign('eventID')->references('idevents')->on('events');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('elements');
    }
}
