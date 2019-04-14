<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Article;
use Spatie\Searchable\Search;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::orderBy('viewed', 'DESC')->paginate(5);
        return view('news.home', ['articles' => $articles]);
    }



    public function search(Request $request)
    {
        $searchResults = (new Search())
            ->registerModel(Article::class, 'title')
            ->registerModel(Category::class, 'title')
            ->perform($request->input('query'));

        return view('search', compact('searchResults'));
    }
}
