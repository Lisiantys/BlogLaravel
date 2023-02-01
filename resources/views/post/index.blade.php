<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Blog') }}
        </h2>
    </x-slot>
    <br>
    @foreach ($posts as $post)
    <div class="mx-auto max-w-md overflow-hidden rounded-lg bg-white shadow">

        <img
          src="{{ asset('/storage/' . $post->image  )}}"
          class="aspect-video w-full object-cover"
          alt=""
        />
        <div class="p-4">
          <p class="mb-1 text-sm text-primary-500">{{ $post->user->name }} • <time>{{ $post->created_at->format('d M Y') }}</time></p>
          <h3 class="text-xl font-medium text-gray-900">{{ $post->title }}</h3>
          <p class="mt-1 text-gray-500">{{ Str::limit($post->content , 120)}}</p>
          <div class="mt-4 flex gap-2">
            <span
              class="inline-flex items-center gap-1 rounded-full bg-blue-50 px-2 py-1 text-xs font-semibold text-blue-600"
            >
              {{ $post->category->name }}
            </span>
            <span><a href="{{ route('posts.show', $post) }}"> Voir plus</a></span>
          </div>
        </div>
    </div>
    @endforeach
    
      @include('profile.partials.footer')


    </x-app-layout>
