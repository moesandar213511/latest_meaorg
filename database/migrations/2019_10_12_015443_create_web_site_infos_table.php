<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWebSiteInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('web_site_infos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->text('about');
            $table->text('history');
            $table->text('vision');
            $table->text('mission');
            $table->string('sign_photo');
            $table->string('sign_name');
            $table->string('sign_position');

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
        Schema::dropIfExists('web_site_infos');
    }
}
