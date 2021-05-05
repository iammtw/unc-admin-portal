<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\User;

class UserController extends Controller
{
    public function profile()
    {
        $user = User::find(Auth::id());
        return view('profile', compact('user'));
    }
    public function profileUpdate(Request $req)
    {
        $user = User::find(Auth::id());
        $user->name = $req->name;
        $user->email = $req->email;
        $user->save();
        return redirect('profile')->with('msg', 'Profile Changed Successfully.');
    }
    public function changePassword()
    {
        $user = User::find(Auth::id());
        return view('change-password', compact('user'));
    }
    public function changePasswordUpdate(Request $req)
    {
        $user = User::find(Auth::id());

        if (Hash::check($req->currentPassword, $user->password)) {
            $user->password = Hash::make($req->password);
            $user->save();
            return redirect('profile')->with('msg', 'Password Changed Successfully.');
        } else {
            return redirect('profile')->with('msg', 'Your Current Password didnt Match.');
        }
    }
}
