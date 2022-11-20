<!-- MODAL UBAH -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Merk</h6><button aria-label="Close" class="btn-close" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <form method="POST" name="myFormUpdate" id="myFormUpdate" enctype="multipart/form-data" onsubmit="return validateFormUpdate()">
                @csrf
                @method('PUT')
                <div class="modal-body">
                    <div class="form-group">
                        <label for="merkU" class="form-label">Nama Merk</label>
                        <input type="text" name="merkU" id="merkU" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="ket" class="form-label">Keterangan</label>
                        <textarea name="ketU" class="form-control" id="ketU" rows="4"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Simpan Perubahan <i class="fe fe-check"></i></button>
                    <a href="javascript:void(0)" class="btn btn-light" onclick="resetUpdate()" data-bs-dismiss="modal">Batal <i class="fe fe-x"></i></a>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function validateFormUpdate() {
        const merk = document.forms["myFormUpdate"]["merkU"].value;

        resetValidUpdate();

        if (jenis == "") {
            validasi('Nama Merk wajib di isi!', 'warning');
            $("input[name='merkU']").addClass('is-invalid');
            return false;
        }

    }

    function resetValidUpdate() {
        $("input[name='merkU']").removeClass('is-invalid');
    };

    function resetUpdate() {
        resetValidUpdate();
        $("input[name='merkU']").val('');
        $("textarea[name='ketU']").val('');
    }
</script>