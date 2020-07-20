@extends('layouts.backend', ['title' => __('User Management')])
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">Tables</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="#" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
        </div>
        </div>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
          {{-- <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
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
                        <td>{{ $user->created_at }}</td>
                        {{-- <td class="text-right">
                            <div class="dropdown">
                                <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-v"></i>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                    @if ($user->id != auth()->id())
                                        <form action="{{ route('user.destroy', $user) }}" method="post">
                                            @csrf
                                            @method('delete')
                                            
                                            <a class="dropdown-item" href="{{ route('user.edit', $user) }}">{{ __('Edit') }}</a>
                                            <button type="button" class="dropdown-item" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                                {{ __('Delete') }}
                                            </button>
                                        </form>    
                                    @else
                                        <a class="dropdown-item" href="{{ route('profile.edit') }}">{{ __('Edit') }}</a>
                                        <a class="dropdown-item" href="#">{{ __('Edit') }}</a>
                                    @endif
                                </div>
                            </div>
                        </td> --}}
                        <td align="center">
                            <a href="#">
                              <i class="fas fa-edit"></i>
                            </a>
                            <a href="#">
                              <i class="fas fa-trash"></i>
                            </a>
                            <a href="#">
                              <i class="fas fa-eye"></i>
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
