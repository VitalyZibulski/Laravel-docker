<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $articles = Article::orderBy('created_at', 'desc')->get()->take(6);

        dd($articles);

        return view('welcome');
    }
}
