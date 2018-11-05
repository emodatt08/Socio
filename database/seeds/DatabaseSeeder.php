<?php

use App\Hobby;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        $hobbies = ["Reading","Watching TV","Family Time","Going to Movies","Fishing","Computer","Gardening","Renting Movies","Walking","Exercise","Listening to Music","Entertaining","Hunting","Team Sports","Shopping","Traveling","Sleeping","Socializing","Sewing","Golf","Church Activities","Relaxing","Playing Music","Housework","Crafts","Watching Sports","Bicycling","Playing Cards","Hiking","Cooking","Eating Out","Dating Online","Swimming","Camping","Skiing","Working on Cars","Writing","Boating","Motorcycling","Animal Care","Bowling","Painting","Running","Dancing","Horseback Riding","Tennis","Theater","Billiards","Beach","Volunteer Work"];
        foreach ($hobbies as $hobby){
            Hobby::create([
                'name' => $hobby
            ]);
        }
    }
}
