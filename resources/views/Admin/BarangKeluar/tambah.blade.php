<!-- MODAL TAMBAH -->
<div class="modal fade" data-bs-backdrop="static" id="modaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Tambah Barang Keluar</h6><button aria-label="Close" class="btn-close"
                    data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="bkkode" class="form-label">Kode Barang Keluar <span class="text-danger">*</span></label>
                    <input type="text" name="bkkode" readonly class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="tglkeluar" class="form-label">Tanggal Keluar <span class="text-danger">*</span></label>
                    <input type="text" name="tglkeluar" class="form-control datepicker-date" placeholder="">
                </div>
                <div class="form-group">
                    <label for="barang" class="form-label">Pilih Barang <span class="text-danger">*</span></label>
                    <select name="barang" id="barang" class="form-control">
                        <option value="">-- Pilih Barang --</option>
                        @foreach ($barang as $b)
                            <option value="{{ $b->barang_kode }}">{{ $b->barang_nama }} [{{ $b->merk_nama }}]
                                [{{ $b->barang_kode }}]</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="jml" class="form-label">Jumlah Keluar <span class="text-danger">*</span></label>
                    <input type="text" name="jml" class="form-control"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                        placeholder="">
                </div>
                <div class="form-group">
                    <label for="tujuan" class="form-label">Tujuan</label>
                    <input type="text" name="tujuan" class="form-control" placeholder="">
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary d-none" id="btnLoader" type="button" disabled="">
                    <span class="spinner-border spinner-border-sm me-1" role="status" aria-hidden="true"></span>
                    Loading...
                </button>
                <a href="javascript:void(0)" onclick="checkForm()" id="btnSimpan" class="btn btn-primary">Simpan <i
                        class="fe fe-check"></i></a>
                <a href="javascript:void(0)" class="btn btn-light" onclick="reset()" data-bs-dismiss="modal">Batal <i
                        class="fe fe-x"></i></a>
            </div>
        </div>
    </div>
</div>


@section('formTambahJS')
    <script>
        function checkForm() {
            const tglkeluar = $("input[name='tglkeluar']").val();
            const barang = $("select[name='barang']").val();
            const jml = $("input[name='jml']").val();
            setLoading(true);
            resetValid();

            if (tglkeluar == "") {
                validasi('Tanggal Keluar wajib di isi!', 'warning');
                $("input[name='tglkeluar']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (barang == "") {
                validasi('Barang wajib di pilih!', 'warning');
                $("select[name='barang']").addClass('is-invalid');
                setLoading(false);
                return false;
            }else if (jml == "") {
                validasi('Jumlah Keluar wajib di isi!', 'warning');
                $("input[name='jml']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else {
                submitForm();
            }

        }

        function submitForm() {
            const bkkode = $("input[name='bkkode']").val();
            const tglkeluar = $("input[name='tglkeluar']").val();
            const barang = $("select[name='barang']").val();
            const tujuan = $("input[name='tujuan']").val();
            const jml = $("input[name='jml']").val();

            $.ajax({
                type: 'POST',
                url: "{{ route('barang-keluar.store') }}",
                enctype: 'multipart/form-data',
                data: {
                    bkkode:bkkode,
                    tglkeluar: tglkeluar,
                    barang: barang,
                    tujuan: tujuan,
                    jml:jml
                },
                success: function(data) {
                    $('#modaldemo8').modal('toggle');
                    swal({
                        title: "Berhasil ditambah!",
                        type: "success"
                    });
                    table.ajax.reload(null, false);
                    reset();

                }
            });
        }

        function resetValid() {
            $("input[name='tglkeluar']").removeClass('is-invalid');
            $("select[name='barang']").removeClass('is-invalid');
            $("input[name='tujuan']").removeClass('is-invalid');
            $("input[name='jml']").removeClass('is-invalid');
        };

        function reset() {
            resetValid();
            $("input[name='bkkode']").val('');
            $("input[name='tglkeluar']").val('');
            $("select[name='barang']").val('');
            $("input[name='tujuan']").val('');
            $("input[name='jml']").val('');
            setLoading(false);
        }

        function setLoading(bool) {
            if (bool == true) {
                $('#btnLoader').removeClass('d-none');
                $('#btnSimpan').addClass('d-none');
            } else {
                $('#btnSimpan').removeClass('d-none');
                $('#btnLoader').addClass('d-none');
            }
        }
    </script>
@endsection
