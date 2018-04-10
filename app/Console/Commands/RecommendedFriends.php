<?php

namespace App\Console\Commands;

use App\Models\User;
use App\Models\RecommendedFriend;
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
        $users = User::all();
        foreach ($users as $user) {
            $id = $user->id;
            $users = $users->except($id);
            $friends = $user->usersFriends;

            $nonfriends = $users->diff($friends);

            $result = $nonfriends->map(function ($item) use ($user, $friends) {
                $onePerson = $friends->pluck('friend_id');
                $anotherPerson = $item->usersFriends->pluck('friend_id');
                //общие друзья
                $personsRate = ($onePerson->intersect($anotherPerson))->count();
                if ($personsRate > 0) {
                    if (null !== (RecommendedFriend::where('user_id', $user->id)->where('friend_id', $item->id)->first())) {
                        $record = ['user_id' => $user->id, 'friend_id' => $item->id, 'rate' => $personsRate];
                        //записываем в таблицу рекомендованных друзей
                        RecommendedFriend::create($record);
                        return true;
                    }
                } return false;
            });
        }

        //получаем таблицу рекомендованных друзей
        $table = RecommendedFriend::all()->toArray();
        $this->info('Рекомендованные друзья:');
        $headers = ['User_id','friend_id', 'rate'];
        $this->table($headers, $table);

    }
}
