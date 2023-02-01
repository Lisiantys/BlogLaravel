<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true; //JAI MIS A TRUE CAR ON SERA FORCEMENT CONNECTÉE POUR FAIRE LE REMPLISSAGE DU FORMULAIRE
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {

        if(request()->routeIs('posts.store'))
        {
            $imageRule = 'required|image|file|max:1000';
        }elseif(request()->routeIs('posts.update')){
            $imageRule = 'sometimes|image|file|max:1000';
        } //Lors d'une update nous n'allons pas forcement changer l'image
        //Sometimes fait en sorte que si l'on est dans la request, nous avons l'image.
        // alors on laisse passer sinon on Demande l'image

        return [
            'title' => 'required',
            'content' => 'required',
            'image' => $imageRule,
            'category' => 'required'
        ]; //On va changer le nom du param dans \Controllers\PostController\store(StorePostRequest $request)
            //au lieu de (Request $request)
    }

    protected function prepareForValidation()
    {
        if($this->image == null)
        {
            $this->request->remove('image');
        }
    }
}
