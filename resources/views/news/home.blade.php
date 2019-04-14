@extends('layouts.app')

@section('title', "News")

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <form method="get" action="{{ route('search.result') }}" class="form-inline mr-auto">
                  <input type="text" name="query" value="{{ isset($searchterm) ? $searchterm : ''  }}" class="form-control col-sm-8"  placeholder="Search..." aria-label="Search">
                  <button class="btn aqua-gradient btn-rounded btn-sm my-0 waves-effect waves-light" type="submit">Search</button>
                </form>
                <br>
                

            </div>
            @forelse ($articles as $article)
                <div class="row">
                    <div class="col-sm-12">
                        <h2><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h2>
                        <p>{!!$article->description_short!!}</p>
                    </div>
                </div>
            @empty
                <h2 class="text-center">Пусто</h2>
            @endforelse

            {{$articles->links()}}
        </div>
    </div>

@endsection