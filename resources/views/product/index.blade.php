@extends('layouts.backend')
@section('title', 'List Product')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">List Sub Category</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="{{route('product.create')}}" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
        </div>
        </div>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr style="text-align: center">
                    <td >&numero;</td>
                    <th scope="col">{{ __('Name') }}</th>
                    <th scope="col">{{ __('Code') }}</th>
                    <th scope="col">{{ __('Price') }}</th>
                    <th scope="col">{{ __('Image') }}</th>
                    {{-- <th scope="col">{{ __('Color') }}</th> --}}
                    <th scope="col">{{ __('Category') }}</th>
                    <th scope="col">{{ __('Sub Category') }}</th>
                    {{-- <th scope="col">{{ __('Created_At') }}</th>
                    <th scope="col">{{ __('Updated_At') }}</th> --}}
                    <th scope="col">{{ __('Status') }}</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                    @php
                      $page = 0;
                      if(Request::get('page'))
                        $page  = Request::get('page')-1;
                      
                      $index = $page*20 + 1;
                    @endphp
                  @foreach ($products as $key => $product)
                    <tr>
                        <td style="text-align: center">{{$key + $index}}</td>
                        <td>{{ $product->product_name }}</td>
                        <td>{{ $product->product_code }}</td>
                        <td class="text-danger">{{ $product->product_price ." USD"}}</td>
                        <td><img src="{{asset('uploads/products')}}/{{ $product->product_img }}" alt="" class="rounded" style="width:60px"></td>
                        <td>{{ $product->category->category_name }}</td>
                        <td>{{ $product->subcategory->subcategory_name }}</td>
                        <td>
                            @if($product->status === 1)
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-success"></i> Active
                                </span>
                            @else
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-danger"></i> Inactive
                                </span>
                            @endif
                        </td>
                        {{-- <td>{{  $product->created_at != null ? $product->created_at->format('d/m/y') : '' }}</td>
                        <td>{{  $product->updated_at != null ? $product->updated_at->format('d/m/y') : '' }}</td> --}}
                        <td class="row" style="margin-left: 2px">
                          <a href="{{ route('product.show', $product->id) }}" style="margin-top: 4px">
                            <i class="fas fa-eye text-primary mr-3" ></i> 
                          </a><span>&nbsp;</span>
                          <form style="margin-top: 4px">
                            <a href="{{route('product.edit', $product->id) }}">
                              <i class="fas fa-edit"></i>
                            </a>
                          </form>
                            <form action="{{ route('product.destroy', $product->id) }}" method="post">
                              {{ method_field('DELETE') }}
                              {{ csrf_field() }}
                              <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                <i style="color: red" class="fas fa-trash"></i>
                              </button>
                             </form>
                          </td>
                      </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- /.container-fluid -->
@endsection