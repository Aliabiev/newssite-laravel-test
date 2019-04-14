<?php
namespace App\Http\Controllers;

use App\Category;
use App\Article;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function category($slug) {
    	$category = Category::where('slug', $slug)->first();
    	return view('news.category', [
    		'category' => $category,
    		'articles' => $category->articles()->where('published', 1)->paginate(5)
    	]);
    }
    public function article($slug) {
    	$article = Article::where('slug', $slug)->firstOrFail();
        $article->viewed += 1;
        $article->save();
        return view('news.article', ['article' => $article]);

    }
}
