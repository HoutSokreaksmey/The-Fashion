<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    protected $tabble = 'sub_categories';

    public function category(){
        return $this->belongsTo('App\Category', 'category_id', 'id');
    }
}