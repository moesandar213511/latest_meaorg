@extends('admin.layouts.site_admin.site_admin_design')
@section('title','Admin | Contact')
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
    Contact List
@endsection
@section('content')
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <button type="button" name="button" class="btn btn-primary pull-right" data-keyboard="false" data-backdrop="static"></button>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table" id="datatable">
                                    <thead class=" text-primary">
                                    <th>
                                        No
                                    </th>
                                    <th>
                                        Name
                                    </th>
                                    <th>
                                        Email
                                    </th>
                                    <th>
                                        Subject
                                    </th>
                                    <th>Action</th>
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

        <!-- Detail Modal -->
<div class="modal fade" id="detailData" tabindex="-1" role="dialog" aria-labelledby="detailDataTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
         {{-- <h4 class="" style="text-align:center;padding-left:-20px;">Contact Detail</h4> --}}
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      {{-- <div class="modal-body text-center lg"> 
            <div class="table-responsive">  --}}
                <table class="table table-hovered">
                    <tbody>
                        <tr>
                        <td><b>Name</b></td>
                        <td id="name" class="name"></td>
                        </tr>
                        <tr>
                        <td><b>Email</b></td>
                        <td class="email"></td>
                        </tr>
                        <tr>
                        <td><b>Subject</b></td>
                        <td class="subject"></td>
                        </tr>
                        <tr>
                        <td><b>Message</b></td>
                        <td class="message"></td>
                        </tr>
                    </tbody>
                </table>
           {{-- </div> --}}
                {{-- <p class="name">

                </p>
                <p class="email">

                </p>
                <p class="subject">

                </p>
                <p class="message">

                </p> --}}
       {{-- </div>  --}}
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
            function reset(){
                $('#update_data')[0].reset();
            }

            load();

            function load(){
                $.ajax({
                    type: "GET",
                    url: "{{url('admin/get_all_contact')}}",

                    cache: false,
                    success: function(data){
                        var data_return=JSON.parse(data);
                        //console.log(data);
                        t.clear();
                        var no = 1;
                        for(var i = 0;i<data_return.length;i++){
                            t.row.add( [
                                 no++,
                                data_return[i]['name'],
                                data_return[i]['email'],
                                data_return[i]['subject'],
                                '<button class="btn btn-success btn-sm" onclick="detail_data('+data_return[i]['id']+')" data-toggle="modal" data-target="#detailData">Detail</button>'+
                                '<button class="btn btn-danger btn-sm" onclick="delete_data('+data_return[i]['id']+')">Delete</button>'
                            ] ).draw( false );
                        }
                    }
                });
            }

            detail_data=function(id){
                // alert(id);
                 $.ajax({
                    type: "get",
                    url: "../detail/contact/"+id,

                    cache: false,
                    success: function(data){
                        var data_return=JSON.parse(data);
                        // alert('work');
                        // console.log(data);
                        $(".name").text(data_return['name']);
                        $(".email").text(data_return['email']);
                        $(".subject").text(data_return['subject']);
                        $(".message").text(data_return['message']);
                    }
                });
                return false;
            }

            delete_data=function(id){
                if(confirm('Are you sure You want to delete!')==true){
                    $.ajax({
                        type: "get",
                        url: "./delete_contact/"+id,

                        cache: false,
                        success: function(data){
                            toastr.success('Delete Contact data successful');
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
