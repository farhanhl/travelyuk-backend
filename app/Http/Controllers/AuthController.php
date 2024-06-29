<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        try {
            $request->validate([
                'email' => 'required|email|unique:users,email',
                'password' => 'required|min:6',
                'nama_lengkap' => 'required|string|max:255',
                'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
                'nomor_telfon' => 'required|string|max:15',
                'is_admin' => 'required|boolean',
            ]);

            $user = User::create([
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'nama_lengkap' => $request->nama_lengkap,
                'jenis_kelamin' => $request->jenis_kelamin,
                'nomor_telfon' => $request->nomor_telfon,
                'is_admin' => $request->is_admin,
            ]);

            return response()->json(['message' => 'User registered successfully!'], 201);
        } catch (ValidationException $e) {
            return response()->json([
                'message' => 'Email sudah terdaftar',
                'errors' => $e->errors(),
            ], 422);
        }
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
            'is_admin' => 'required|boolean',
        ]);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            $user = Auth::user();
            $role = $user->is_admin ? 'Admin' : 'User';
            if ($user->is_admin == $request->is_admin) {
                return response()->json(['user' => $user, 'message' => 'Berhasil masuk'], 200);
            } else {
                return response()->json(['message' => 'Akun anda terdaftar sebagai ' . $role], 403);
            }
        } else {
            return response()->json(['message' => 'Username atau Password salah!'], 401);
        }
    }

    public function logout()
    {
        Auth::logout();
        return response()->json(['message' => 'Logout successful!'], 200);
    }
}
