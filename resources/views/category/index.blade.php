@extends('layouts.backend')
@section('title', 'List Category')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">List Category</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="{{route('category.create')}}" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
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
                    <th scope="col">{{ __('Name') }}</th>
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
                  @foreach ($category as $key => $cat)
                    <tr>
                        <td style="text-align: center">{{$key + $index}}</td>
                        <td>{{ $cat->category_name }}</td>
                        <td>
                            @if($cat->status === 1)
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-success"></i> Active
                                </span>
                            @else
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-danger"></i> Inactive
                                </span>
                            @endif
                        </td>
                        <td>{{  $cat->created_at != null ? $cat->created_at->format('d/m/y') : '' }}</td>
                        <td>{{  $cat->updated_at != null ? $cat->updated_at->format('d/m/y') : '' }}</td>
                        <td class="row" style="margin-left: 50px">
                            <form>
                              <a href="{{route('category.edit', $cat->id) }}">
                                <i class="fas fa-edit" style="margin-top: 7px"></i>
                              </a>
                            </form>
                            
                            <form action="{{ route('category.destroy', $cat->id) }}" method="post">
                              {{ method_field('DELETE') }}
                              {{ csrf_field() }}
                              <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this Category?") }}') ? this.parentElement.submit() : ''">
                                <i class="fas fa-trash" style="color: red"></i>
                            </button>
                            </form>
                            {{-- <a href="#">
                              <i class="fas fa-trash"></i>
                            </a> --}}
                            {{-- <a href="#">
                              <i class="fas fa-eye"></i>
                            </a> --}}
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
