<?php

namespace App\Http\Controllers;

use App\User;
use App\Product;
use App\Category;
use App\SubCategory;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::get();
        return view('product.index',compact('products'));
    }

    public function upload_image($file_name, $destination){
        
        $target_dir = $destination;
        // rename new file 
        // 1.jpg
        $temp = explode(".", $file_name["name"]);
        // 123745.jpg
        $newfilename = round(microtime(true)) . '.' . end($temp);
        // uploads/product/123745.jpg
        $target_file = $target_dir . basename($newfilename);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            $check = getimagesize($file_name["tmp_name"]);
            if($check !== false) {
                //echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
            } else {
                //echo "File is not an image.";
                $uploadOk = 0;
            }
        }
        // Check if file already exists
        // if (file_exists($target_file)) {
        //     echo "Sorry, file already exists.";
        //     $uploadOk = 0;
        // }
        // //Check file size
        // if ($file_name["size"] > 500000) {
        //     echo "Sorry, your file is too large.";
        //     $uploadOk = 0;
        // }
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif" ) {
            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }
        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
        } else {
            if (move_uploaded_file($file_name["tmp_name"], $target_file)) {
                return $newfilename;
                //echo "The file ". basename( $newfilename). " has been uploaded.";
            } else {
                return "can not upload";
                //echo "Sorry, there was an error uploading your file.";
            }
        }
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = Category::all();
        $subcategory = SubCategory::all();

        return view('product.create', compact('category', 'subcategory'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $product = new Product();
        $product->product_name = $request->pro_name;
        $product->product_code = $request->pro_code;
        $product->product_price = $request->pro_price;
        $image_name = $this->upload_image($_FILES['product_img'], $_SERVER["DOCUMENT_ROOT"]."/uploads/products/");
        $product->product_img = $image_name;
        $product->category_id = $request->input('category');
        $product->subcategory_id = $request->input('subcategory');
        $product->save();
        return redirect()->route('product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $product = Product::findOrFail($id);
        $category = Category::all();
        $user = User::all();
        return view('product.show', compact('product', 'category', 'user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::find($id);
        $category = Category::all();
        $subcategory = SubCategory::all();

        return view('product.edit', compact('product', 'category', 'subcategory'));
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
        $product = Product::find($id);
        $product->product_name = $request->pro_name;
        $product->product_code = $request->pro_code;
        $product->product_price = $request->pro_price;
        $image_name = $this->upload_image($_FILES['product_img'], $_SERVER["DOCUMENT_ROOT"]."/uploads/products/");
        $product->product_img = $image_name;
        $product->category_id = $request->input('category');
        $product->subcategory_id = $request->input('subcategory');
        $product->save();
        return redirect()->route('product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product::find($id);
        $product->delete();
        return redirect()->route('product.index');
    }
}
