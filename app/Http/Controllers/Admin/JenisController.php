<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\JenisModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Yajra\DataTables\Facades\DataTables;

class JenisController extends Controller
{
    public function index()
    {
        $data["title"] = "Jenis";
        return view('Admin.Jenis.index', $data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = JenisModel::orderBy('jenis_id', 'DESC')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('ket', function ($row) {
                    $ket = $row->jenis_keterangan == '' ? '-' : $row->jenis_keterangan;

                    return $ket;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "jenis_id" => $row->jenis_id,
                        "jenis_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->jenis_nama)),
                        "jenis_keterangan" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->jenis_keterangan))
                    );
                    $button = '';
                    $button .= '
                    <div class="g-2">
                        <a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>
                        <a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>
                    </div>
                    ';
                    return $button;
                })
                ->rawColumns(['action', 'ket'])->make(true);
        }
    }

    public function store(Request $request)
    {
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->jenis)));

        //insert data
        JenisModel::create([
            'jenis_nama' => $request->jenis,
            'jenis_slug' => $slug,
            'jenis_keterangan'   => $request->ket,
        ]);

        $data['title'] = "Jenis";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil ditambah!');

        //redirect to index
        return redirect()->route('jenis.index')->with($data);
    }

    public function update(Request $request, JenisModel $jeni)
    {
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->jenisU)));

        //update data
        $jeni->update([
            'jenis_nama' => $request->jenisU,
            'jenis_slug' => $slug,
            'jenis_keterangan'  => $request->ketU,
        ]);

        $data['title'] = "Jenis";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil diubah!');

        //redirect to index
        return redirect()->route('jenis.index')->with($data);
    }

    public function hapus(Request $request)
    {
        //delete data
        JenisModel::findOrFail($request->idjenis)->delete();

        $data['title'] = "Jenis";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil dihapus!');

        //redirect to index
        return redirect()->route('jenis.index')->with($data);
    }


}
