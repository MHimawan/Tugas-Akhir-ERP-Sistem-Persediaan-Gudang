<!-- MODAL TAMBAH -->
<div class="modal fade" data-bs-backdrop="static" id="modaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Tambah Satuan</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <form method="POST" action="{{ route('satuan.store') }}" name="myForm" enctype="multipart/form-data" onsubmit="return validateForm()">
                @csrf
                <div class="modal-body">
                    <div class="form-group">
                        <label for="satuan" class="form-label">Nama Satuan</label>
                        <input type="text" name="satuan" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="ket" class="form-label">Keterangan</label>
                        <textarea name="ket" class="form-control" rows="4"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Simpan <i class="fe fe-check"></i></button>
                    <a href="javascript:void(0)" class="btn btn-light" onclick="reset()" data-bs-dismiss="modal">Batal <i class="fe fe-x"></i></a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        const satuan = document.forms["myForm"]["satuan"].value;

        resetValid();

        if (satuan == "") {
            validasi('Nama Satuan wajib di isi!', 'warning');
            $("input[name='satuan']").addClass('is-invalid');
            return false;
        }

    }

    function resetValid() {
        $("input[name='satuan']").removeClass('is-invalid');
    };

    function reset() {
        resetValid();
        $("input[name='satuan']").val('');
        $("textarea[name='ket']").val('');
    }
</script>