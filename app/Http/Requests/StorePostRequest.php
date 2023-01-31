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
        return [
            'title' => 'required',
            'content' => 'required',
            'image' => 'required|image|file|max:1000',
            'category' => 'required'
        ]; //On va changer le nom du param dans \Controllers\PostController\store(StorePostRequest $request)
            //au lieu de (Request $request)
    }
}
