<!-- MODAL EDIT -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Barang Keluar</h6><button aria-label="Close" class="btn-close"
                    data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <input type="hidden" name="idbkU">
                <div class="form-group">
                    <label for="bkkodeU" class="form-label">Kode Barang Keluar <span
                            class="text-danger">*</span></label>
                    <input type="text" name="bkkodeU" readonly class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="tglkeluarU" class="form-label">Tanggal Keluar <span class="text-danger">*</span></label>
                    <input type="text" name="tglkeluarU" class="form-control datepicker-date" placeholder="">
                </div>
                <div class="form-group">
                    <label for="barangU" class="form-label">Pilih Barang <span class="text-danger">*</span></label>
                    <select name="barangU" id="barangU" class="form-control">
                        <option value="">-- Pilih Barang --</option>
                        @foreach ($barang as $b)
                            <option value="{{ $b->barang_kode }}">{{ $b->barang_nama }} [{{ $b->merk_nama }}]
                                [{{ $b->barang_kode }}]</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="jmlU" class="form-label">Jumlah Keluar <span class="text-danger">*</span></label>
                    <input type="text" name="jmlU" class="form-control"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                        placeholder="">
                </div>
                <div class="form-group">
                    <label for="tujuanU" class="form-label">Tujuan</label>
                    <input type="text" name="tujuanU" class="form-control" placeholder="">
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-success d-none" id="btnLoaderU" type="button" disabled="">
                    <span class="spinner-border spinner-border-sm me-1" role="status" aria-hidden="true"></span>
                    Loading...
                </button>
                <a href="javascript:void(0)" onclick="checkFormU()" id="btnSimpanU" class="btn btn-success">Simpan
                    Perubahan <i class="fe fe-check"></i></a>
                <a href="javascript:void(0)" class="btn btn-light" onclick="resetU()" data-bs-dismiss="modal">Batal <i
                        class="fe fe-x"></i></a>
            </div>
        </div>
    </div>
</div>

@section('formEditJS')
    <script>
        function checkFormU() {
            const tglkeluar = $("input[name='tglkeluarU']").val();
            const barang = $("select[name='barangU']").val();
            const tujuan = $("input[name='tujuanU']").val();
            const jml = $("input[name='jmlU']").val();
            setLoadingU(true);
            resetValidU();

            if (tglkeluar == "") {
                validasi('Tanggal Keluar wajib di isi!', 'warning');
                $("input[name='tglkeluarU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else if (barang == "") {
                validasi('Barang wajib di pilih!', 'warning');
                $("select[name='barangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            }else if (jml == "") {
                validasi('Jumlah Keluar wajib di isi!', 'warning');
                $("input[name='jmlU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else {
                submitFormU();
            }
        }

        function submitFormU() {
            const id = $("input[name='idbkU']").val();
            const bkkode = $("input[name='bkkodeU']").val();
            const tglkeluar = $("input[name='tglkeluarU']").val();
            const barang = $("select[name='barangU']").val();
            const tujuan = $("input[name='tujuanU']").val();
            const jml = $("input[name='jmlU']").val();

            $.ajax({
                type: 'POST',
                url: "{{ url('admin/barang-keluar/proses_ubah') }}/" + id,
                enctype: 'multipart/form-data',
                data: {
                    bkkode:bkkode,
                    tglkeluar: tglkeluar,
                    barang: barang,
                    tujuan: tujuan,
                    jml:jml
                },
                success: function(data) {
                    swal({
                        title: "Berhasil diubah!",
                        type: "success"
                    });
                    $('#Umodaldemo8').modal('toggle');
                    table.ajax.reload(null, false);
                    resetU();
                }
            });
        }

        function resetValidU() {
            $("input[name='tglkeluarU']").removeClass('is-invalid');
            $("select[name='barangU']").removeClass('is-invalid');
            $("input[name='tujuanU']").removeClass('is-invalid');
            $("input[name='jmlU']").removeClass('is-invalid');
        };

        function resetU() {
            resetValidU();
            $("input[name='idbkU']").val('');
            $("input[name='bkkodeU']").val('');
            $("input[name='tglkeluarU']").val('');
            $("select[name='barangU']").val('');
            $("input[name='tujuanU']").val('');
            $("input[name='jmlU']").val('');
            setLoadingU(false);
        }

        function setLoadingU(bool) {
            if (bool == true) {
                $('#btnLoaderU').removeClass('d-none');
                $('#btnSimpanU').addClass('d-none');
            } else {
                $('#btnSimpanU').removeClass('d-none');
                $('#btnLoaderU').addClass('d-none');
            }
        }
    </script>
@endsection
