@extends('layouts.backend')
@section('title', 'List User')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">List User</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="{{route('user.create')}}" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
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
                    <th scope="col">{{ __('Email') }}</th>
                    <th scope="col">{{ __('Creation Date') }}</th>
                    <th scope="col">{{ __('Updation Date') }}</th>
                    <th scope="col">{{ __('Actions') }}</th>
                  </tr>
                </thead>
                <tbody>
                    @php
                      $page = 0;
                      if(Request::get('page'))
                        $page  = Request::get('page')-1;
                      
                      $index = $page*20 + 1;
                    @endphp
                  @foreach ($users as $key => $user)
                    <tr>
                        <td style="text-align: center">{{$key + $index}}</td>
                        <td>{{ $user->name }}</td>
                        <td><a href="mailto:{{ $user->email }}">{{ $user->email }}</a></td>
                        {{-- <td>{{ $user->created_at->format('d/m/Y') }}</td>
                        <td>{{ $user->updated_at->format('d/m/Y') }}</td> --}}
                        <td>{{  $user->created_at != null ? $user->created_at->format('d/m/y') : '' }}</td>
                        <td>{{  $user->updated_at != null ? $user->updated_at->format('d/m/y') : '' }}</td>
                        <td class="row" style="margin-left: 30px">
                          <form style="margin-top: 4px">
                            <a href="{{route('user.edit', $user->id) }}">
                              <i class="fas fa-edit"></i>
                            </a>
                          </form>
                            <form action="{{ route('user.destroy', $user->id) }}" method="post">
                              {{ method_field('DELETE') }}
                              {{ csrf_field() }}
                              <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                <i class="fas fa-trash" style="color: red"></i>
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
