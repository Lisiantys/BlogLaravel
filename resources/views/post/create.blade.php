<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Crée un nouveau post') }}
        </h2>
    </x-slot>
    <br>

    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

      @foreach ($errors->all() as $error)
        <span class="block text-red-500">{{ $error }}</span>
      @endforeach



      <form action="{{ route('posts.store') }}" method="post" enctype="multipart/form-data">
        @csrf

        <x-input-label for="title" value="Titre du post"></x-input-label>
        <x-text-input id="title" name="title"></x-text-input>

        <x-input-label for="content" value="Contenu du post"></x-input-label>
        <textarea name="content" id="content" cols="30" rows="10"></textarea>
        
        <x-input-label for="image" value="Image du post, Max size : 1Mo"></x-input-label>
        <x-text-input id="image" name="image" type="file"></x-text-input>

        <x-input-label for="category" value="Categorie du post"></x-input-label>

        <select name="category" id="category">
          @foreach ($categories as $category)
          <option value="{{ $category->id }}">{{ $category->name }}</option>
          @endforeach      
        </select>

        <x-primary-button style="display: block !important;" class="mt-5">Crée mon post</x-primary-button>

      </form>
    </div>


    </x-app-layout>
