@extends('Master.Layouts.app', ['title' => $title])

@section('content')
<!-- PAGE-HEADER -->
<div class="page-header">
    <h1 class="page-title">Jenis Barang</h1>
    <div>
        <ol class="breadcrumb">
            <li class="breadcrumb-item text-gray">Master Barang</li>
            <li class="breadcrumb-item active" aria-current="page">Jenis Barang</li>
        </ol>
    </div>
</div>
<!-- PAGE-HEADER END -->


<!-- ROW -->
<div class="row row-sm">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header justify-content-between">
                <h3 class="card-title">Data</h3>
                <div>
                    <a class="modal-effect btn btn-primary-light" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#modaldemo8">Tambah Data <i class="fe fe-plus"></i></a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="table-1" width="100%" class="table table-bordered text-nowrap border-bottom dataTable no-footer dtr-inline collapsed">
                        <thead>
                            <th class="border-bottom-0" width="1%">No</th>
                            <th class="border-bottom-0">Jenis</th>
                            <th class="border-bottom-0">Keterangan</th>
                            <th class="border-bottom-0" width="1%">Action</th>
                        </thead>
                        <tbody></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END ROW -->

@include('Admin.Jenis.tambah')
@include('Admin.Jenis.edit')
@include('Admin.Jenis.hapus')

<script>
    function update(data) {
        $("#myFormUpdate").attr("action", "{{url('/admin/jenis')}}/" + data.jenis_id);
        $("input[name='jenisU']").val(data.jenis_nama.replace(/_/g, ' '));
        $("textarea[name='ketU']").val(data.jenis_keterangan.replace(/_/g, ' '));
    }

    function hapus(data) {
        $("input[name='idjenis']").val(data.jenis_id);
        $("#vjenis").html("jenis " + "<b>" + data.jenis_nama.replace(/_/g, ' ') + "</b>");
    }

    function validasi(judul, status) {
        swal({
            title: judul,
            type: status,
            confirmButtonText: "Iya."
        });
    }
</script>

@endsection

@section('scripts')
<script>
    var table;
    $(document).ready(function() {
        //datatables
        table = $('#table-1').DataTable({

            "processing": true,
            "serverSide": true,
            "info": true,
            "order": [],
            "lengthMenu": [
                [5, 10, 25, 50, 100],
                [5, 10, 25, 50, 100]
            ],
            "pageLength": 10,

            lengthChange: true,

            "ajax": {
                "url": "{{route('jenis.getjenis')}}",
            },

            "columns": [{
                    data: 'DT_RowIndex',
                    name: 'DT_RowIndex',
                    searchable: false
                },
                {
                    data: 'jenis_nama',
                    name: 'jenis_nama',
                },
                {
                    data: 'ket',
                    name: 'jenis_keterangan',
                },
                {
                    data: 'action',
                    name: 'action',
                    orderable: false,
                    searchable: false
                },
            ],

        });
    });
</script>
@endsection