@extends('layouts.backend')
@section('title', 'List User')
@section('content')
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <!-- Page Heading -->
        <h1 class="h3 mb-2 text-gray-800">List Ads</h1>
        {{-- <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p> --}}
        <div>
            <a href="{{ route('ads.create') }}" class="btn btn-sm btn-primary "><i class="fas fa-add"></i> Create New</a>
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
                    <th scope="col">{{ __('Image') }}</th>
                    <th scope="col">{{ __('Status') }}</th>
                    <th scope="col">{{ __('Creation Date') }}</th>
                    <th scope="col">{{ __('Updation Date') }}</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody class="text-center">
                @php
                    $page = 0;
                    if(Request::get('page'))
                        $page  = Request::get('page')-1;
                    $index = $page*20 + 1;
                @endphp
                @foreach ($ads as $key => $ad)
                    <tr>
                        <td class="text-info">{{$key + $index}}</td>
                        <td><img src="{{asset('uploads/ads')}}/{{ $ad->image }}" alt="" class="rounded" style="width:120px"></td>
                        <td>
                            @if($ad->status === 1)
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-success"></i> Active
                                </span>
                            @else
                                <span class="badge badge-dot mr-4">
                                    <i class="bg-danger"></i> Inactive
                                </span>
                            @endif
                        </td>
                        {{-- <td>{{ $ad->created_at->format('d/m/Y') }}</td>
                        <td>{{ $ad->updated_at->format('d/m/Y') }}</td> --}}
                        <td>{{  $ad->created_at != null ? $ad->created_at->format('d/m/y') : '' }}</td>
                        <td>{{  $ad->updated_at != null ? $ad->updated_at->format('d/m/y') : '' }}</td>
                        <td align="center">
                            <a href="{{ route('ads.edit', $ad->id) }}">
                              <i class="fas fa-edit"></i>
                            </a><span>&nbsp;</span>
                            <a href="{{ route('ads.destroy', $ad->id) }}">
                              <i class="fas fa-trash" style="color: red"></i>
                            </a>
                            {{-- <a href="{{ route('ads.show', $ad->id) }}">
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
