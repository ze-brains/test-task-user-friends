<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;


class RecommendedFriends extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'rec:friends';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $id = 3;
        $user = User::find($id);
        $users = User::all();
        $users = $users->except($id);

        $friends = $user->usersFriends;

        $nonfriends = $users->diff($friends);

        $result = $nonfriends->map(function ($item) use ($user, $friends) {
            $onePerson = $friends->pluck('friend_id');
            $anotherPerson = $item->usersFriends->pluck('friend_id');
            //общие друзья
            $personsRate = ($onePerson->intersect($anotherPerson))->count();
            if ($personsRate > 0) {
                $record = ['user_id' => $user->id, 'recommendedfriend_id' => $item->id, 'rate' => $personsRate];
                //запись record в таблицу recommended_friends
                //...
                return true;
            } return false;
        });
    }
}
