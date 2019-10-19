@extends('admin.layouts.site_admin.site_admin_design')
@section('title','Admin | Ads')
@section('css')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <style>
        .imagePreview {
            width: 100%;
            height: 150px;
            background-position: center center;
            background:url('http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg');
            background-color:#fff;
            background-size: cover;
            background-repeat:no-repeat;
            display: inline-block;
            /* box-shadow:0px -3px 6px 2px rgba(0,0,0,0.2); */
        }
        .upload_btn
        {
            display:block;
            border-radius:10px;
            /* box-shadow:0px 4px 6px 2px rgba(0,0,0,0.2); */
            margin-bottom: 15px;
        }
        .imgUp
        {
            margin-bottom:15px;
        }
    </style>
@endsection

@section('nav_bar_text')
    Ads
@endsection
@section('content')
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <button type="button" name="button" class="btn btn-success pull-right" data-target="#modalBox" data-toggle="modal" data-keyboard="false" data-backdrop="static">Add</button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table" id="datatable">
                                    <thead class=" text-primary">
                                    <th>
                                        No
                                    </th>
                                    <th>
                                        Photo
                                    </th>
                                    <th>
                                        Link
                                    </th>
                                    <th>
                                        Start Date
                                    </th>
                                    <th>
                                        End Date
                                    </th>
                                    <th></th>
                                    <th></th>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- insert_model --}}
        <div class="modal fade" id="modalBox">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Create New Ads</h4>
                        <button data-dismiss="modal" class="close">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form id="insert_ads" enctype="multipart/form-data" class="md-form">
                            {{csrf_field()}}

                            <div class="row">
                                <div class="col-sm-4 imgUp">
                                    <img src="{{asset('images/default.jpg')}}" id="image" class="imagePreview img-thumbnail">
                                    <label class="btn btn-primary upload_btn">
                                        Upload<input type="file" accept="image/png,image/jpeg,image/jpg" onchange="displaySelectedPhoto('upload_photo','image')" id="upload_photo" name="photo" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                                    </label>
                                </div>
                                <div class="col-sm-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="link">Link</label>
                                                <input type="text" name="link" id="link" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="s_date">Start Date</label>
                                               <input type="date" name="s_date" id="s_date" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="e_date">End Date</label>
                                                <input type="date" name="e_date" id="e_date" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="text
                                            "><b>Select Webpage</b></label><br>
                                            <div class="row">
                                                @foreach ($webpages as $webpage)
                                                    <div class="col-sm-3">
                                                        <div class="form-group">
                                                            <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="webpage_id[]" class="custom-control-input" id="customCheck{{$webpage->id}}" value="{{$webpage->id}}">
                                                            <label class="custom-control-label" for="customCheck{{$webpage->id}}">{{$webpage->name}}</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary pull-right" id="btn_submit">Create</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- edit modal -->
        <div class="modal fade" id="edit_modalBox">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Edit Project</h4>
                        <button data-dismiss="modal" class="close">&times;</button>
                    </div>
                    <div class="modal-body">


                        <form id="update_data">
                            {{csrf_field()}}

                            <div class="row">
                                <div class="col-sm-4 imgUp">
                                    <input type="hidden" name="id" class="form-control" id="id_edit" value="">
                                    <img src="{{asset('images/default.jpg')}}" id="imgs" class="imagePreview img-thumbnail">
                                    <label class="btn btn-primary upload_btn">
                                        Upload<input type="file" accept="image/png,image/jpeg,image/jpg" onchange="displaySelectedPhoto('update_photo','imgs')" id="update_photo" name="photo" class="uploadFile img" value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
                                    </label>
                                </div>
                                <div class="col-sm-8">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="update_link">Link</label>
                                                <input type="text" name="link" id="update_link" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="update_s_date">Start Date</label>
                                               <input type="date" name="s_date" id="update_s_date" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label for="update_e_date">End Date</label>
                                                <input type="date" name="e_date" id="update_e_date" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="text
                                            "><b>Select Webpage</b></label><br>
                                            <div class="row">
                                                @foreach ($webpages as $webpage)
                                                    <div class="col-sm-3">
                                                        <div class="form-group">
                                                            <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="webpage_id[]" class="custom-control-input webpage_arr" id="update_customCheck{{$webpage->id}}" value="{{$webpage->id}}">
                                                            <label class="custom-control-label" for="update_customCheck{{$webpage->id}}">{{$webpage->name}}</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <button class=" btn btn-primary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary pull-right" id="update_btn">Update</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </div>

@endsection

@section('js')
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(document).ready(function () {

            var t=$("#datatable").DataTable({
                "ordering": false,
                // "paging": false,
                "bInfo" : false,
                // "bPaginate": false,
                "bLengthChange": false
                // "bFilter": true,
                // "bAutoWidth": false
            });
            // function reset(){
            //     $('#update_data')[0].reset();
            // }

            load();

            function load(){
                $.ajax({
                    type: "POST",
                    url: "{{url('get_all_ads')}}",

                    cache: false,
                    success: function(data){
                        var data_return=JSON.parse(data);
                        //console.log(data);
                        t.clear();
                        var no = 1;
                        for(var i = 0;i<data_return.length;i++){
                            t.row.add( [
                                no++,
                                '<img src="'+data_return[i]['photo_url']+'" alt="" style="width:100px;height:100px">',
                                data_return[i]['link'],
                                data_return[i]['s_date'],
                                data_return[i]['e_date'],
                                '<button class="btn btn-info btn-sm" onclick="edit_data('+data_return[i]['id']+')" data-target="#edit_modalBox" data-toggle="modal" data-keyboard="false" data-backdrop="static">Edit</button>',
                                '<button class="btn btn-danger btn-sm" onclick="delete_data('+data_return[i]['id']+')">Delete</button>'
                            ] ).draw( false );
                        }

                        $('#insert_ads')[0].reset();
                        $('#image').attr('src','{{asset('images/default.jpg')}}');

                    }
                });
            }

            $('#insert_ads').on('submit',function (e)
            {
                e.preventDefault();
                var alldata = new FormData(this);
                $.ajax
                ({
                    type: "POST",
                    url: "{{url('insert/ads')}}",
                    data:alldata,
                    cache:false,
                    processData: false,
                    contentType: false,
                    success: function(data){
                        //alert(data);
                        console.log(data);
                        $('#modalBox').modal('hide');
                        toastr.success('Insert ads data successful');
                        load();
                    }
                });
                return false;
            });

            edit_data=function(id){

                $.ajax({
                    type: "POST",
                    url: "../edit/ads/"+id,

                    cache: false,
                    success: function(data){
                        //reset();
                        var ads=JSON.parse(data);
                        
                        $("#imgs").attr("src", ads['photo_url']);
                        $('#id_edit').val(ads['id']);
                        $('#update_link').val(ads['link']);
                        $('#update_s_date').val(ads['s_date']);
                        $('#update_e_date').val(ads['e_date']);
                        var web_arr = ads['webpages'];

                        var arr = [];
                        var aa = $('.webpage_arr').length;
                        if (aa > 0){
                            $('.webpage_arr').each(function(){
                                arr.push($(this).val());
                            });
                        }
                        //console.log(arr);
                        var cb=document.getElementsByClassName('webpage_arr');
                        for(var i = 0;i < arr.length;i++){

                            if(check_contain(arr[i],web_arr)){
                                cb[i].checked=true;
                            }
                        }
                        

                        $('#edit_modalBox').modal('show');
                    }
                });
            }

            function check_contain(value,arr){
                var boo=false;
                for(var i=0;i<arr.length;i++){
                    if(arr[i]==value){
                        boo=true;
                    }
                }
                return boo;
            }

            $('#update_data').on('submit',function (e)
            {
                e.preventDefault();
                var updateData = new FormData(this);
                $.ajax
                ({
                    type: 'POST',
                    url: "{{url('update/ads')}}",
                    data:updateData,
                    cache:false,
                    processData: false,
                    contentType: false,
                    success: function(data){
                        //console.log(data);
                        //alert(data);
                        $('#edit_modalBox').modal('hide');
                        toastr.success('Update ads data successful');
                        load();
                    }
                });
                return false;
            });

            delete_data=function(id){
                if(confirm('Are you sure You want to delete!')==true){
                    $.ajax({
                        type: "POST",
                        url: "../delete/ads/"+id,

                        cache: false,
                        success: function(data){
                            toastr.success('Delete ads data successful');
                            load();
                        }
                    });
                }else{
                    return false;
                }
            }


        });
    </script>
@endsection