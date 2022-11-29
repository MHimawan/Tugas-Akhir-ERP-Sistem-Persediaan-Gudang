<!-- MODAL EDIT -->
<div class="modal fade" data-bs-backdrop="static" id="Umodaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Ubah Barang Masuk</h6><button aria-label="Close" class="btn-close"
                    data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <input type="hidden" name="idbmU">
                <div class="form-group">
                    <label for="bmkodeU" class="form-label">Kode Barang Masuk <span
                            class="text-danger">*</span></label>
                    <input type="text" name="bmkodeU" readonly class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="tglmasukU" class="form-label">Tanggal Masuk <span class="text-danger">*</span></label>
                    <input type="text" name="tglmasukU" class="form-control datepicker-date" placeholder="">
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
                    <label for="customerU" class="form-label">Pilih Customer <span class="text-danger">*</span></label>
                    <select name="customerU" id="customerU" class="form-control">
                        <option value="">-- Pilih Customer --</option>
                        @foreach ($customer as $c)
                            <option value="{{ $c->customer_id }}">{{ $c->customer_nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="jmlU" class="form-label">Jumlah Masuk <span class="text-danger">*</span></label>
                    <input type="text" name="jmlU" class="form-control"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                        placeholder="">
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
            const tglmasuk = $("input[name='tglmasukU']").val();
            const barang = $("select[name='barangU']").val();
            const customer = $("select[name='customerU']").val();
            const jml = $("input[name='jmlU']").val();
            setLoadingU(true);
            resetValidU();

            if (tglmasuk == "") {
                validasi('Tanggal Masuk wajib di isi!', 'warning');
                $("input[name='tglmasukU']").addClass('is-invalid');
                setLoading(Ufalse);
                return false;
            } else if (barang == "") {
                validasi('Barang wajib di pilih!', 'warning');
                $("select[name='barangU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            }else if (customer == "") {
                validasi('Customer wajib di pilih!', 'warning');
                $("select[name='customerU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            }else if (jml == "") {
                validasi('Jumlah Masuk wajib di isi!', 'warning');
                $("input[name='jmlU']").addClass('is-invalid');
                setLoadingU(false);
                return false;
            } else {
                submitFormU();
            }
        }

        function submitFormU() {
            const id = $("input[name='idbmU']").val();
            const bmkode = $("input[name='bmkodeU']").val();
            const tglmasuk = $("input[name='tglmasukU']").val();
            const barang = $("select[name='barangU']").val();
            const customer = $("select[name='customerU']").val();
            const jml = $("input[name='jmlU']").val();

            $.ajax({
                type: 'POST',
                url: "{{ url('admin/barang-masuk/proses_ubah') }}/" + id,
                enctype: 'multipart/form-data',
                data: {
                    bmkode:bmkode,
                    tglmasuk: tglmasuk,
                    barang: barang,
                    customer: customer,
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
            $("input[name='tglmasukU']").removeClass('is-invalid');
            $("select[name='barangU']").removeClass('is-invalid');
            $("select[name='customerU']").removeClass('is-invalid');
            $("input[name='jmlU']").removeClass('is-invalid');
        };

        function resetU() {
            resetValidU();
            $("input[name='idbmU']").val('');
            $("input[name='bmkodeU']").val('');
            $("input[name='tglmasukU']").val('');
            $("select[name='barangU']").val('');
            $("select[name='customerU']").val('');
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
