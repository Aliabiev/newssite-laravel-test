<?php

namespace App;
 
use Spatie\Searchable\Searchable;
use Spatie\Searchable\SearchResult;
use Illuminate\Database\Eloquent\Model;
 
class Post extends Model implements Searchable
{
    protected $table = 'posts';
 
    protected $fillable = ['title', 'body', 'submitted_by', 'published_by', 'status', 'image', 'thumbnail'];
 
    public function getSearchResult(): SearchResult
    {
        $url = route('posts.show', $this->id);
 
        return new SearchResult(
            $this,
            $this->title,
            $url
        );
    }
}