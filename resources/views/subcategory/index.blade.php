@extends('layouts.backend')
@section('title', 'List SubCategory')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Sub Category</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="{{route('subcategory.create')}}" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
        </div>
        </div>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          {{-- <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">List User</h6>
          </div> --}}
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr style="text-align: center">
                    <td >&numero;</td>
                    <th scope="col">{{ __('Sub Category Name') }}</th>
                    <th scope="col">{{ __('Category Name') }}</th>
                    <th scope="col">{{ __('Status') }}</th>
                    <th scope="col">{{ __('Creation Date') }}</th>
                    <th scope="col">{{ __('Updation Date') }}</th>
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
                  @foreach ($subcategory as $key => $subcat)
                    <tr>
                        <td style="text-align: center">{{$key + $index}}</td>
                        <td>{{ $subcat->subcategory_name }}</td>
                        <td>{{ $subcat->category->category_name }}</td>
                        <td>
                            @if($subcat->status === 1)
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-success"></i> Active
                                </span>
                            @else
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-danger"></i> Inactive
                                </span>
                            @endif
                        </td>
                        <td>{{  $subcat->created_at != null ? $subcat->created_at->format('d/m/y') : '' }}</td>
                        <td>{{  $subcat->updated_at != null ? $subcat->updated_at->format('d/m/y') : '' }}</td>
                            <td align="center" >
                                <a href="{{route('subcategory.edit', $subcat->id) }}">
                                    <i class="fas fa-edit"></i>
                                </a><span>&nbsp;</span>
                                <a href="{{route('subcategory.destroy', $subcat->id)}}">
                                    <i class="fas fa-trash"></i>
                                </a>
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