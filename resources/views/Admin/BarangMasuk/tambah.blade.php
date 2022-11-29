<!-- MODAL TAMBAH -->
<div class="modal fade" data-bs-backdrop="static" id="modaldemo8">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">Tambah Barang Masuk</h6><button aria-label="Close" class="btn-close"
                    data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="bmkode" class="form-label">Kode Barang Masuk <span class="text-danger">*</span></label>
                    <input type="text" name="bmkode" readonly class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="tglmasuk" class="form-label">Tanggal Masuk <span class="text-danger">*</span></label>
                    <input type="text" name="tglmasuk" class="form-control datepicker-date" placeholder="">
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
                    <label for="customer" class="form-label">Pilih Customer <span class="text-danger">*</span></label>
                    <select name="customer" id="customer" class="form-control">
                        <option value="">-- Pilih Customer --</option>
                        @foreach ($customer as $c)
                            <option value="{{ $c->customer_id }}">{{ $c->customer_nama }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="jml" class="form-label">Jumlah Masuk <span class="text-danger">*</span></label>
                    <input type="text" name="jml" class="form-control"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');"
                        placeholder="">
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
            const tglmasuk = $("input[name='tglmasuk']").val();
            const barang = $("select[name='barang']").val();
            const customer = $("select[name='customer']").val();
            const jml = $("input[name='jml']").val();
            setLoading(true);
            resetValid();

            if (tglmasuk == "") {
                validasi('Tanggal Masuk wajib di isi!', 'warning');
                $("input[name='tglmasuk']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else if (barang == "") {
                validasi('Barang wajib di pilih!', 'warning');
                $("select[name='barang']").addClass('is-invalid');
                setLoading(false);
                return false;
            }else if (customer == "") {
                validasi('Customer wajib di pilih!', 'warning');
                $("select[name='customer']").addClass('is-invalid');
                setLoading(false);
                return false;
            }else if (jml == "") {
                validasi('Jumlah Masuk wajib di isi!', 'warning');
                $("input[name='jml']").addClass('is-invalid');
                setLoading(false);
                return false;
            } else {
                submitForm();
            }

        }

        function submitForm() {
            const bmkode = $("input[name='bmkode']").val();
            const tglmasuk = $("input[name='tglmasuk']").val();
            const barang = $("select[name='barang']").val();
            const customer = $("select[name='customer']").val();
            const jml = $("input[name='jml']").val();

            $.ajax({
                type: 'POST',
                url: "{{ route('barang-masuk.store') }}",
                enctype: 'multipart/form-data',
                data: {
                    bmkode:bmkode,
                    tglmasuk: tglmasuk,
                    barang: barang,
                    customer: customer,
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
            $("input[name='tglmasuk']").removeClass('is-invalid');
            $("select[name='barang']").removeClass('is-invalid');
            $("select[name='customer']").removeClass('is-invalid');
            $("input[name='jml']").removeClass('is-invalid');
        };

        function reset() {
            resetValid();
            $("input[name='bmkode']").val('');
            $("input[name='tglmasuk']").val('');
            $("select[name='barang']").val('');
            $("select[name='customer']").val('');
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
