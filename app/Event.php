<?php

namespace App;
 
use Spatie\Searchable\Searchable;
use Spatie\Searchable\SearchResult;
use Illuminate\Database\Eloquent\Model;
 
class Event extends Model implements Searchable
{
    protected $table = 'events';
 
    protected $fillable = [ 'title', 'date', 'location', 'description',
                            'organizer', 'status', 'image', 'thumbnail'];
 
    public function getSearchResult(): SearchResult
    {
        $url = route('events.show', $this->id);
 
        return new SearchResult(
            $this,
            $this->title,
            $url
         );
    }
 
}