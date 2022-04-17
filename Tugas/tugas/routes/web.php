<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->get('kategori', ['uses' => 'KategoriController@showAllKategori']);
    $router->get('kategori/{id}', ['uses' => 'KategoriController@showOneKategori']);
    $router->post('kategori', ['uses' => 'KategoriController@create']);
    $router->post('kategori/delete', ['uses' => 'KategoriController@delete']);
    $router->put('kategori', ['uses' => 'KategoriController@update']);
});
