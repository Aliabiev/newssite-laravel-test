<?php

use Faker\Generator as Faker;

$factory->define(App\Article::class, function (Faker $faker) {
	$categories = App\Category::all()->pluck('id');
    return [
        'title'             => $faker->sentence($nbWords = rand(5,20), $variableNbWords = true),
        'slug'              => $faker->sentence($nbWords = rand(10,20), $variableNbWords = true),
        'description_short' => $faker->sentence($nbWords = rand(10,20), $variableNbWords = true),
        'description'       => $faker->sentence($nbWords = rand(100,500), $variableNbWords = true),
        'published'         => $faker->numberBetween(0, 1),
        //'category_id' => $faker->randomElement($categories),
    ];
});