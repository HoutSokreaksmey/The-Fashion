<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    
    public function category(){
        return $this->belongsTo('App\Category', 'category_id', 'id');
    }
    public function subcategory(){
        return $this->belongsTo('App\SubCategory', 'subcategory_id', 'id');
    }
}
