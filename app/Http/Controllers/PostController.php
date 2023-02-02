<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Requests\StorePostRequest;
use Illuminate\Contracts\Auth\Access\Gate;
use Illuminate\Support\Facades\Gate as GateCheck;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Post::with('category', 'user')->latest()->get();
        //affiche les posts par ordre descendant, on utilise get pour afficher car on fait une requete à la bdd
        return view('post.index', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        return view('post.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StorePostRequest $request)
    {
        $imageName = $request->image->store('posts');
        //48:00 Nous allons recupérer l'image et la stocker dans le dossier..
        // posts qui sera crée à la première utilisation puis stockera les autres image à l'avenir dedans
        //Ce dossier se trouve dans \app\public\storage\posts
        Post::create([
            "title" => $request->title,
            "content" => $request->content,
            "image" => $imageName
        ]); // a PRENDRE EN COMPTE LA METHODE BOOT DANS LE \MODEL\POST

        return redirect()->route('dashboard')->with('success', 'Votres post a été créé');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
       return view('post.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {

        if (! GateCheck::allows('update-post', $post)) {
            abort(403);
        }
        $categories = Category::all();
        return view('post.edit', compact('post', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(StorePostRequest $request, Post $post)
    {
        $arrayUpdate = [
            'title' => $request->title,
            'content' => $request->content
        ];

        if($request->image != null)
        {
            $imageName = $request->image->store('posts');
            $arrayUpdate = array_merge($arrayUpdate, [
                'image' => $imageName
            ]);
        }

        $post->update($arrayUpdate);

        return redirect()->route('dashboard')->with('success', 'Votre post a été modifié');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        if (! GateCheck::allows('destroy-post', $post)) {
            abort(403);
        }

        $post->delete();
        return redirect()->route('dashboard')->with('success', 'Votre post a été supprimé');
    }
}
