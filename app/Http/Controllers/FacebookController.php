<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Socialite;
use Exception;
use Auth;

class FacebookController extends Controller
{
     /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function redirectToFacebook()
    {
        
         return Socialite::driver('facebook')->fields([
                'first_name', 'last_name', 'email', 'gender', 'birthday','location','hometown','age_range','friends','posts','photos'
            ])->scopes([
                'email', 'user_birthday','user_gender','user_location','user_hometown',
                'user_age_range','user_friends','user_link','user_photos','user_posts',
                'user_tagged_places','user_videos','user_likes',
            ])->redirect();
    }


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function handleFacebookCallback()
    {
        try {
            $user = $this->createOrGetUser(Socialite::driver('facebook')->fields([
                'name', 'email', 'birthday','gender','location','hometown','age_range','friends','link',
                'photos','posts','tagged_places','videos','likes',
            ])->user());
                auth()->login($user);

            // $userModel = new User;
            // $createdUser = $userModel->addNew($create);
            // Auth::loginUsingId($createdUser->id);


            return redirect()->route('home');


        } catch (Exception $e) {


            return redirect('/');


        }
    }
     public function createOrGetUser($providerUser)
    {
            dd($providerUser);

        $account = User::where('facebook_id',$input['facebook_id'])->first();

        if ($account) {
            return $account->user;
        } else {
            $user = User::whereEmail($providerUser->getEmail())->first();
            //  echo "<pre>";print_r($user);die;
                dd($user);
            if(!empty($providerUser->getAvatar())){
                $fileContents = file_get_contents($providerUser->getAvatar());
                File::put(public_path() . '/uploads/profile/' . $providerUser->getId() . ".jpg", $fileContents);
            }
             $imageUrl = $providerUser->getId() . ".jpg";
            // echo "<pre>";print_r($providerUser->user);die;
            if (!$user) {
                $user = User::create([
                    'email' => $providerUser->getEmail(),
                    'name' => $providerUser->getName(),
                    'password' => Hash::make($providerUser->getEmail()),
                    'avatar'=> $imageUrl,
                    'birthday' => $providerUser->user['birthday'],
                    'sex' => $providerUser->user['gender'],
                    'age_range' =>$providerUser->user['age_range']['min'],
                    'total_friends'=>$providerUser->user['friends']['summary']['total_count'],
                    'profile_path'=>$providerUser->user['link'],
                    'username' => ($providerUser->getNickname() == "") ? $providerUser->getName() : $providerUser->getNickname(),
                    'avatar' => $providerUser->getAvatar(),
                    'facebook_id' => $providerUser->getId()

                ]);
            }

            $account->user()->associate($user);
            $account->save();

            return $user;
        }
    }
}
