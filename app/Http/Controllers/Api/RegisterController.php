<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
class RegisterController extends Controller
{
    
    public function register (Request $request)
    {
        /* $this->validate($request, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]); */

        $user = User::create([
            'username' => $request->username,
            'id_card' => $request->id_card,
            'password' => bcrypt($request->password),
        ]);

        return response()->json([
            'success' => 'User created'
        ]);
    }
}
