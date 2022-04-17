<?php
namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\JsonResponse;
 use Illuminate\Http\Request;
 use Illuminate\Http\Response;

class KategoriController extends Controller
{

    public function showAllKategori(): JsonResponse
    {

        return response()->json(Kategori::all());
    }

    public function showOneKategori($id): JsonResponse
    {

        return response()->json(Kategori::find($id));
    }

    public function create (Request $request)
    {

        $kategori = Kategori::create($request->all());

        return response()->json($kategori, Response::HTTP_CREATED);
    }

    public function update(Request $request)
    {
        $kategori = Kategori::find($request->id);
        $kategori->update($request->except('id'));
        return $kategori;

    }

    public function delete(Request $request)
    {
        $kategori = Kategori::find($request->id);
        $kategori->delete();
        return [
            'success' => true,
        ];

    }
}

// delete
        // $data = Article::find($request->id);

        // $data->delete();

        // return true;

// update
// $data = Article::find($request->id);

        // $data->update($request->except('id'));

        // return $data;

// create
// $data = Article::create([
        //     'title' => $request->title,
        //     'content' => $request->content
        // ]);

        // return $data;

// getAll
 // public function getAll()
    // {
    //     $data = Article::all();

    //     return $data;
    // }
