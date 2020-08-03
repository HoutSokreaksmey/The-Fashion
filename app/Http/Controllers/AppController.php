<?php

namespace App\Http\Controllers;

use App\Ads;
use App\Category;
use Illuminate\Support\Facades\App;
use Illuminate\Http\Request;
// use App\Slide;
use App\product;
use App\SubCategory;

class AppController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $product = Product::all();
        $category = Category::all();
        $ads = Ads::all();
        $subcategory = SubCategory::all();

        return view('frontend.component.index', compact('product', 'category', 'ads', 'subcategory'));
    }

    //Man
    public function men(Request $request)
    {
        $category = Category::all();
        $subcategory = SubCategory::all();
        $product = Product::all();

        return view('frontend/component/men', compact('category', 'subcategory', 'product'));
    }

    //Women
    public function women(Request $request)
    {
        $category = Category::all();
        $subcategory = SubCategory::all();
        $product = Product::all();

        return view('frontend/component/women', compact('category', 'subcategory', 'product'));
    }

    //Couple
    public function couple(Request $request)
    {
        $category = Category::all();
        $subcategory = SubCategory::all();
        $product = Product::all();

        return view('frontend/component/couple', compact('category', 'subcategory', 'product'));
    }

    //Accessories
    public function accessories(Request $request)
    {
        $category = Category::all();
        $subcategory = SubCategory::all();
        $product = Product::all();

        return view('frontend/component/accessories', compact('category', 'subcategory', 'product'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // dd($id);
        //Query product by id
        $product = Product::findOrFail($id);
        // dd($product);
        $category = Category::all();
        return view('frontend.component.product_detail', compact('product','category'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function search(Request $request){
        // $category = Category::all();
        // $subcategory = SubCategory::all();
        $product = Product::all();
        $search = $request->search_value;
       
        $products = Product::where('product_name','LIKE',"%$request->search_value%")
                            ->orWhere('product_code', 'LIKE',"%$request->search_value%")->get();
                            dd($search.$products );
        return view('frontend.component.product_search', compact('products', 'category', 'subcategory'));
    }
}
