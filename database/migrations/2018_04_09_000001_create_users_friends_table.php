<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersFriendsTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $set_schema_table = 'user_friends';

    /**
     * Run the migrations.
     * @table users_friends
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable($this->set_schema_table)) return;
        Schema::create($this->set_schema_table, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->unsignedInteger('user_id')->nullable()->default(null);
            $table->unsignedInteger('friend_id')->nullable()->default(null);

            $table->index(["user_id"], 'user_friends_user_id_foreign');

            $table->index(["friend_id"], 'user_friends_friend_id_foreign');


            $table->foreign('friend_id', 'user_friends_friend_id_foreign')
                ->references('id')->on('users')
                ->onDelete('cascade')
                ->onUpdate('restrict');

            $table->foreign('user_id', 'user_friends_user_id_foreign')
                ->references('id')->on('users')
                ->onDelete('cascade')
                ->onUpdate('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
     public function down()
     {
       Schema::dropIfExists($this->set_schema_table);
     }
}
