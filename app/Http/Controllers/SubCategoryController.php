<?php

namespace App\Http\Controllers;

use App\Category;
use App\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subcategory = SubCategory::get();
        return view('subcategory.index',compact('subcategory'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::all();
        return view('subcategory.create', compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $subcategory = new SubCategory();
        $subcategory->subcategory_name = $request->subcategory_name;
        $subcategory->category_id = $request->input('category');
        $subcategory->save();
        return redirect()->route('subcategory');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function show(SubCategory $subCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // dd($id);
        $subcategory = SubCategory::findOrFail($id);
        $category = Category::all();
        return view('subcategory.edit', compact('subcategory', 'category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    // public function update(Request $request, SubCategory $subCategory)
    public function update(Request $request, $id)
    {
        $subcategory = SubCategory::findOrFail($id);
        $subcategory->subcategory_name = $request->subcategory_name;
        $subcategory->category_id = $request->input('category');
        $subcategory->save();
        return redirect()->route('subcategory');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\SubCategory  $subCategory
     * @return \Illuminate\Http\Response
     */
    // public function destroy(SubCategory $subCategory)
    public function destroy($id)
    {
        // dd($id);
        $subcategory = SubCategory::findOrFail($id);
        $subcategory->delete();
        return redirect()->route('subcategory');
    }
}
