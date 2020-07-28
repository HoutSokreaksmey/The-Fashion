<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Ads;

class AdsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = Ads::get();
        // dd($ads);
        return view('ads.index', compact('ads'));
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
        return view('ads.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $ad = new Ads();

        $image_name = $this->upload_image($_FILES['product_img'], $_SERVER["DOCUMENT_ROOT"]."/uploads/ads/");
        $ad->image = $image_name;

        $ad->save();

        return redirect()->route('ads');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $ad = Ads::find($id);

        return view('ads.edit', compact('ad'));
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
        $ad = Ads::find($id);

        $image_name = $this->upload_image($_FILES['product_img'], $_SERVER["DOCUMENT_ROOT"]."/uploads/ads/");
        $ad->image = $image_name;

        $ad->save();

        return redirect()->route('ads');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // dd($id);
        $ads = Ads::find($id);
        $ads->delete();
        return redirect()->route('ads');
        // return redirect()->route('ads')->withStatus(__('User successfully deleted.'));
    }
}
