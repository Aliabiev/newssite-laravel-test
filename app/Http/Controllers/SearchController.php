<?php

namespace App\Http\Controllers;
 
use App\Post;
use App\Event;
use Illuminate\Http\Request;
use Spatie\Searchable\Search;
 
class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('search');
    }
 
    /**
     * search records in database and display  results
     * @param  Request $request [description]
     * @return view      [description]
     */
    public function search( Request $request)
    {
 
        $searchterm = $request->input('query');
 
        $searchResults = (new Search())
                    ->registerModel(Post::class, 'title')
                    ->registerModel(Event::class, 'title')
                    ->perform($request->input('query'));
 
        return view('search', compact('searchResults', 'searchterm'));
    }
 
}