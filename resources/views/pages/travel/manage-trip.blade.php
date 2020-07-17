@extends('layouts.app')

@section('template_title')
    {!! trans('usersmanagement.showing-all-users') !!}
@endsection

@section('template_linked_css')
    @if(config('usersmanagement.enabledDatatablesJs'))
        <link rel="stylesheet" type="text/css" href="{{ config('usersmanagement.datatablesCssCDN') }}">
    @endif
    <style type="text/css" media="screen">
        .users-table {
            border: 0;
        }
        .users-table tr td:first-child {
            padding-left: 15px;
        }
        .users-table tr td:last-child {
            padding-right: 15px;
        }
        .users-table.table-responsive,
        .users-table.table-responsive table {
            margin-bottom: 0;
        }
        td.description{
            width: 7%;
        }
    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">

                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {!! trans('usersmanagement.showing-all-users') !!}
                            </span>

                            <div class="btn-group pull-right btn-group-xs">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa fa-ellipsis-v fa-fw" aria-hidden="true"></i>
                                    <span class="sr-only">
                                        {!! trans('usersmanagement.users-menu-alt') !!}
                                    </span>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="/users/create">
                                        <i class="fa fa-fw fa-user-plus" aria-hidden="true"></i>
                                        {!! trans('usersmanagement.buttons.create-new') !!}
                                    </a>
                                    <a class="dropdown-item" href="/users/deleted">
                                        <i class="fa fa-fw fa-group" aria-hidden="true"></i>
                                        {!! trans('usersmanagement.show-deleted-users') !!}
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-body">

                        @if(config('usersmanagement.enableSearchUsers'))
                            @include('partials.search-users-form')
                        @endif

                        <div class="table-responsive users-table">
                            <table class="table table-striped table-sm data-table">
                                <caption id="user_count">
                                    
                                </caption>
                                <thead class="thead">
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>     
                                        <th>Author</th>                                    
                                        <th>Description</th>
                                        <th>Status</th>
                                        <th class="hidden-sm hidden-xs hidden-md">created</th>                                        
                                        <th class="text-center">{!! trans('usersmanagement.users-table.actions') !!}</th>
                                        <th class="no-search no-sort"></th>
                                        <th class="no-search no-sort"></th>
                                    </tr>
                                </thead>
                                <tbody id="users_table">
                                    @foreach($trips as $trip)
                                        <tr>
                                            <td>{{$trip->id}}</td>
                                            <td>{{$trip->name}}</td>  
                                            <td>
                                                
                                                <?php
                                                    
                                                    $author = App\Models\Trip::find($trip['id'])->author_name;



                                                    echo $author->name; 
                                                    
                                                    ?>
                                                
                                            </td>                                          
                                            <td class="description">
                                            <?php
                                                $description =  htmlspecialchars_decode($trip->description);
                                                echo $description;
                                            ?>
                                            </td>
                                            
                                            <td>
                                          
                                                    @if ($trip->status== 'available')
                                                        @php $badgeClass = 'primary' @endphp
                                                    @elseif ($trip->status == 'complete')
                                                        @php $badgeClass = 'danger' @endphp
                                                    @elseif ($trip->status == 'finished')
                                                        @php $badgeClass = 'warning' @endphp
                                                    @else
                                                        @php $badgeClass = 'default' @endphp
                                                    @endif
                                                    <span class="badge badge-{{$badgeClass}}">{{ $trip->status }}</span>
                                              
                                            </td>
                                            <td class="hidden-sm hidden-xs hidden-md">{{$trip->created_at}}</td>
                                            
                                            <td>

                                            <form action="/trip/.$trip->id" method="post" data-toggle='tooltip', title='delete'>
                                            
                                            <Button>
                                            <i class="fa fa-trash-o fa-fw" aria-hidden="true"></i>  <span class="hidden-xs">Delete</span><span class="hidden-xs"> Trip</span>
                                            </Button>
                                            </form>
                                                
                                            </td>

                                            <td>
                                                <a class="btn btn-sm btn-success btn-block" href="/trip/{{$trip->id}}" data-toggle="tooltip" title="Show">
                                                <i class="fa fa-eye fa-fw" aria-hidden="true"></i> <span class="hidden-xs hidden-sm">Show</span><span class="hidden-xs hidden-sm hidden-md"> Trip</span>
                                                </a>
                                            </td>
                                            <td>
                                                <a class="btn btn-sm btn-info btn-block" href="" data-toggle="tooltip" title="Edit">
                                                    {!! trans('tripmanagement.buttons.edit') !!}
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tbody id="search_results"></tbody>
                                @if(config('usersmanagement.enableSearchUsers'))
                                    <tbody id="search_results"></tbody>
                                @endif

                            </table>

                            @if(config('usersmanagement.enablePagination'))
                                
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('modals.modal-delete')

@endsection

@section('footer_scripts')
    
        @include('scripts.datatables')
    
    @include('scripts.delete-modal-script')
    @include('scripts.save-modal-script')
    @if(config('usersmanagement.tooltipsEnabled'))
        @include('scripts.tooltips')
    @endif
    @if(config('usersmanagement.enableSearchUsers'))
        @include('scripts.search-users')
    @endif
@endsection
