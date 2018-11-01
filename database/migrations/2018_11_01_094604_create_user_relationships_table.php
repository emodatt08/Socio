<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserRelationshipsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_relationships', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('related_user_id')->unsigned();
            $table->integer('main_user_id')->unsigned();
            $table->integer('relation_type')->default(0);
            $table->boolean('allow')->default(0);
            $table->foreign('related_user_id')
                ->references('id')->on('users')->onDelete("CASCADE");
            $table->foreign('main_user_id')
                ->references('id')->on('users')->onDelete("CASCADE");
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
        Schema::dropIfExists('user_relationships');
    }
}
