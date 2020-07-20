<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('frontend.app');
// });

// Route::get('/',function(){
//     return "Welcome To Admin";
// });

Auth::routes();
Route::get('/', 'AppController@index');
Route::get('/product_detail/{id}','AppController@show')->name('product_detail');

Route::get('/home', 'HomeController@index')->name('home');
Route::group(['middleware' => 'auth'], function () {
    Route::resource('user', 'UserController', ['except' => ['show']]);
});

Route::get('/men', function () {
    //data
    $categories = [
        "Shoes",
        "Belt",
        "Watch",
        "Pants",
        "Shirt",
        "Suit",
        "Wallet",
        "Backpack",
    ];

    $prodcut_list = [
        [
            "id" => 1,
            "product_img" => "https://img.alicdn.com/imgextra/i2/3484409092/O1CN01lCeGts2H2BboWkkz0_!!3484409092.jpg_500x500.jpg",
            "price" => 16.5,
            "code" => "SSH960332"
        ],
        [
            "id" => 2,
            "product_img" => "https://img.alicdn.com/imgextra/i2/2193192696/O1CN010w2Cbv1VmoN47R1Qy_!!2193192696.jpg_500x500.jpg",
            "price" => 15.5,
            "code" => "SSH948987"
        ],
        [
            "id" => 3,
            "product_img" => "https://gd2.alicdn.com/imgextra/i2/2260625023/O1CN01Pj8b161myZzonyOxK_!!2260625023.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH883472"
        ],
        [
            "id" => 4,
            "product_img" => "https://img.alicdn.com/imgextra/i1/4170238859/O1CN01mDj7zS2FJTKFKQuJL_!!4170238859.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH870873"
        ],
        [
            "id" => 5,
            "product_img" => "https://img.alicdn.com/imgextra/i2/4170238859/O1CN01thL0fj2FJTK55VYLH_!!4170238859.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH850596"
        ],
        [
            "id" => 6,
            "product_img" => "https://img.alicdn.com/imgextra/i4/4170238859/O1CN014ALsOG2FJTKD1qtsY_!!4170238859.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH805448"
        ],
        [
            "id" => 7,
            "product_img" => "https://img.alicdn.com/imgextra/i2/3484409092/O1CN01lCeGts2H2BboWkkz0_!!3484409092.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 8,
            "product_img" => "https://img.alicdn.com/imgextra/i2/3484409092/O1CN01lCeGts2H2BboWkkz0_!!3484409092.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH581405"
        ],
        [
            "id" => 9,
            "product_img" => "https://img.alicdn.com/imgextra/i2/3484409092/O1CN01lCeGts2H2BboWkkz0_!!3484409092.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 10,
            "product_img" => "https://img.alicdn.com/imgextra/i3/2972174373/O1CN015Glh501iAsYbS6jUT_!!2972174373.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 11,
            "product_img" => "https://img.alicdn.com/imgextra/i2/4170238859/O1CN013OJY6H2FJTKHT1GAw_!!4170238859.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 12,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1092354491/O1CN01NYDxDs1j2vJQTO5T4_!!0-item_pic.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
    ];
    // dd($categories);
    // dd($prodcut_list);

    return view('menu.men', [
        'categories' => $categories,
        'products' => $prodcut_list
    ]);
})->name('product.men');

Route::get('/women', function () {
    //data
    $categories_women = [
        "Bag",
        "Shoes",
        "Shirt",
        "Watch",
        "Dress",
        "Skirt",
        "Pants",
        "Wallet",
        "Backpack",
        "Jean",
    ];

    $prodcut_list = [
        [
            "id" => 1,
            "product_img" => "https://gd2.alicdn.com/imgextra/i2/854064225/O1CN01iXpJhc1h55xGx0qOD_!!854064225.jpg_500x500.jpg",
            "price" => 16.5,
            "code" => "SSH960332"
        ],
        [
            "id" => 2,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01PtPfJv29RMSITWyz8_!!265198064.jpg_500x500.jpg",
            "price" => 15.5,
            "code" => "SSH948987"
        ],
        [
            "id" => 3,
            "product_img" => "https://img.alicdn.com/imgextra/i4/1980521004/O1CN01Z8SknT1JHsDqzRa6d_!!1980521004.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH883472"
        ],
        [
            "id" => 4,
            "product_img" => "https://img.alicdn.com/imgextra/i1/265198064/O1CN01CMIaQs29RMSFKvBMQ_!!265198064.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH870873"
        ],
        [
            "id" => 5,
            "product_img" => "https://img.alicdn.com/imgextra/i1/265198064/O1CN0160eLQ129RMSBJuuKT_!!265198064.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH850596"
        ],
        [
            "id" => 6,
            "product_img" => "https://img.alicdn.com/imgextra/i3/2452321026/O1CN01hBKaQM1JRwwbuH4X4_!!2452321026.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH805448"
        ],
        [
            "id" => 7,
            "product_img" => "https://img.alicdn.com/imgextra/i4/2760866457/O1CN0123bQaW1xZLyNFKaBT_!!2760866457.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 8,
            "product_img" => "https://gd4.alicdn.com/imgextra/i4/1980521004/O1CN01MHWdjS1JHsEFXugIm_!!1980521004.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH581405"
        ],
        [
            "id" => 9,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 10,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 11,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 12,
            "code" => "SSH582239"
        ],
        [
            "id" => 12,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
    ];
    // dd($categories);
    // dd($prodcut_list);
    return view('menu.women', [
        'categories' => $categories_women,
        'products' => $prodcut_list
    ]);
})->name('product.women');

Route::get('/accessories', function () {
    //data
    $categories_accessories = [
        "Light",
        "Watch",
        "Belt",
        "Hat",
        "Case",
        "Wallet",
        "Krafino",
        "MacBook Case",
        "AirPods Case",
    ];

    $prodcut_list = [
        [
            "id" => 1,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20170203144930-026447.JPG",
            "price" => 16.5,
            "code" => "SSH960332"
        ],
        [
            "id" => 2,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20170203145322-765569.JPG",
            "price" => 15.5,
            "code" => "SSH948987"
        ],
        [
            "id" => 3,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20170203150027-888165.JPG",
            "price" => 14,
            "code" => "SSH883472"
        ],
        [
            "id" => 4,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20161207042808-195978.JPG",
            "price" => 17.5,
            "code" => "SSH870873"
        ],
        [
            "id" => 5,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20170205013143-176333.JPG",
            "price" => 16,
            "code" => "SSH850596"
        ],
        [
            "id" => 6,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20161207025708-470475.JPG",
            "price" => 16,
            "code" => "SSH805448"
        ],
        [
            "id" => 7,
            "product_img" => "https://myfashion2017.s3.amazonaws.com/thum/Thefashion_20161207025505-481793.JPG",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 8,
            "product_img" => "https://gd4.alicdn.com/imgextra/i4/1980521004/O1CN01MHWdjS1JHsEFXugIm_!!1980521004.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH581405"
        ],
        [
            "id" => 9,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 10,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 11,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 12,
            "code" => "SSH582239"
        ],
        [
            "id" => 12,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
    ];
    // dd($categories);
    // dd($prodcut_list);
    return view('menu.accessories', [
        'categories' => $categories_accessories,
        'products' => $prodcut_list
    ]);
})->name('product.accessories');

Route::get('/couple', function () {
    //data
    $categories_couple = [
        "Suit",
        "Shoes",
        "Watch",
        "Pants",
        "Shirt",
    ];

    $prodcut_list = [
        [
            "id" => 1,
            "product_img" => "https://gd2.alicdn.com/imgextra/i2/854064225/O1CN01iXpJhc1h55xGx0qOD_!!854064225.jpg_500x500.jpg",
            "price" => 16.5,
            "code" => "SSH960332"
        ],
        [
            "id" => 2,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01PtPfJv29RMSITWyz8_!!265198064.jpg_500x500.jpg",
            "price" => 15.5,
            "code" => "SSH948987"
        ],
        [
            "id" => 3,
            "product_img" => "https://img.alicdn.com/imgextra/i4/1980521004/O1CN01Z8SknT1JHsDqzRa6d_!!1980521004.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH883472"
        ],
        [
            "id" => 4,
            "product_img" => "https://img.alicdn.com/imgextra/i1/265198064/O1CN01CMIaQs29RMSFKvBMQ_!!265198064.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH870873"
        ],
        [
            "id" => 5,
            "product_img" => "https://img.alicdn.com/imgextra/i1/265198064/O1CN0160eLQ129RMSBJuuKT_!!265198064.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH850596"
        ],
        [
            "id" => 6,
            "product_img" => "https://img.alicdn.com/imgextra/i3/2452321026/O1CN01hBKaQM1JRwwbuH4X4_!!2452321026.jpg_500x500.jpg",
            "price" => 16,
            "code" => "SSH805448"
        ],
        [
            "id" => 7,
            "product_img" => "https://img.alicdn.com/imgextra/i4/2760866457/O1CN0123bQaW1xZLyNFKaBT_!!2760866457.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 8,
            "product_img" => "https://gd4.alicdn.com/imgextra/i4/1980521004/O1CN01MHWdjS1JHsEFXugIm_!!1980521004.jpg_500x500.jpg",
            "price" => 17.5,
            "code" => "SSH581405"
        ],
        [
            "id" => 9,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 10,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
        [
            "id" => 11,
            "product_img" => "https://img.alicdn.com/imgextra/i2/1980521004/O1CN01dSjrts1JHsDyOHvFR_!!1980521004.jpg_500x500.jpg",
            "price" => 12,
            "code" => "SSH582239"
        ],
        [
            "id" => 12,
            "product_img" => "https://img.alicdn.com/imgextra/i3/265198064/O1CN01MXo8lZ29RMS9s5WVL_!!265198064.jpg_500x500.jpg",
            "price" => 14,
            "code" => "SSH582239"
        ],
    ];
    // dd($categories);
    // dd($prodcut_list);
    return view('menu.couple', [
        'categories' => $categories_couple,
        'products' => $prodcut_list
    ]);
})->name('product.couple');

Route::get('/brand', function () {
    return view('menu.brand');
})->name('product.brand');