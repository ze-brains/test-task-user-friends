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
            //получаем id текущего usera
            $id = $user->id;
            //исключаем его из анализа, так как он сам себе друг
            $users = $users->except($id);
            //выбираем друзей текущего usera
            $friends = $user->usersFriends;
            //выбираем тех, кто еще не является другом usera
            $nonfriends = $users->diff($friends);

            //для каждого из возможных друзей вычисляем $rate
            $result[] = $nonfriends->map(function ($item) use ($user, $friends) {
                $onePerson = $friends->pluck('friend_id');
                $anotherPerson = $item->usersFriends->pluck('friend_id');

                //количество общих друзей текущего usera и его возможных друзей
                $personsRate = ($onePerson->intersect($anotherPerson))->count();
                if ($personsRate) {
                    if (null !== (RecommendedFriend::where('user_id', $user->id)->where('friend_id', $item->id)->first())) {
                        $record = ['user_id' => $user->id, 'friend_id' => $item->id, 'rate' => $personsRate];

                        //записываем в таблицу рекомендованных друзей текущему user
                        //RecommendedFriend::create($record);
                        return ['user_id' => $user->id, 'friend_id' => $item->id, 'rate' => $personsRate];
                    }
                } return;

            });
        }

        //получаем таблицу рекомендованных друзей
        $table = RecommendedFriend::all()->toArray();
        $this->info('Рекомендованные друзья:');
        $headers = ['User_id','Friend_id', 'Rate'];
        $this->table($headers, $table);

    }
}
