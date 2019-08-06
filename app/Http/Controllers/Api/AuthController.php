<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class AuthController extends Controller
{
  public function register(Request $request) {

    $data = $request->validate([
      'name' => 'required',
      'email' => 'email|required|unique:users',
      'password' => 'required|confirmed'
    ]);

    $user = User::create($data);
    $accessToken = $user->createToken('authToken')->accessToken;

    //  use Json() to return a Json response
    return response(['user' => $user, 'access_token' => $accessToken]); // ->json([

    // ]);
  }
}
