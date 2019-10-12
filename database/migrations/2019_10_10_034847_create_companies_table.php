<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('member_id');
            $table->string('logo');
            $table->string('name');
            $table->integer('sub_category');
            $table->string('email');
            $table->string('phone');
            $table->text('address');
            $table->string('web_url');
            $table->string('facebook_url');
            $table->text('what-we-do');
            $table->text('why-join-us');
            $table->text('vision');
            $table->text('mission');
            $table->text('about-us');
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
        Schema::dropIfExists('companies');
    }
}
