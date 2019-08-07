<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;

class AuthController extends Controller
{
    public function register(Request $request) {
      $data = $request->validate([
        'name' => 'required|min:3',
        'email' => 'required|email|unique:users',
        'password' => 'required|min:3'
      ]);

      $data['password'] = bcrypt($data['password']);

      $user = User::create($data);
      $token = $user->createToken('AuthToken')->accessToken;

      return response()->json(['Status' => 'Success', 'User' => $data, 'Token' => $token]);
    }

    public function login(Request $request) {
      $data = $request->validate([
        'email' => 'email|required',
        'password' => 'required|min:3'
      ]);
      if(!auth()->attempt($data)) {
        return response()->json(['Status' => 'failed', 'error' => 'UnAuthorised']);
      }

      $Token = auth()->user()->createToken('UserToken')->accessToken;
      return response()->json(['status' => 'Success', 'Token' => $Token]);
    }

    public function details() {

      return response()->json(['Status' => 'Success', 'User' => auth()->user()]);
    }
}
