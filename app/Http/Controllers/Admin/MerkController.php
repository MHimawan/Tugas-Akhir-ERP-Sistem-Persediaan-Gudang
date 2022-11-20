<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\MerkModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Yajra\DataTables\Facades\DataTables;

class MerkController extends Controller
{
    public function index()
    {
        $data["title"] = "Merk";
        return view('Admin.Merk.index', $data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $data = MerkModel::orderBy('merk_id', 'DESC')->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('ket', function ($row) {
                    $ket = $row->merk_keterangan == '' ? '-' : $row->merk_keterangan;

                    return $ket;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "merk_id" => $row->merk_id,
                        "merk_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->merk_nama)),
                        "merk_keterangan" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->merk_keterangan))
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
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->merk)));

        //insert data
        MerkModel::create([
            'merk_nama' => $request->merk,
            'merk_slug' => $slug,
            'merk_keterangan'   => $request->ket,
        ]);

        $data['title'] = "Merk";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil ditambah!');

        //redirect to index
        return redirect()->route('merk.index')->with($data);
    }

    public function update(Request $request, MerkModel $merk)
    {
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->merkU)));

        //update data
        $merk->update([
            'merk_nama' => $request->merkU,
            'merk_slug' => $slug,
            'merk_keterangan'  => $request->ketU,
        ]);

        $data['title'] = "Merk";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil diubah!');

        //redirect to index
        return redirect()->route('merk.index')->with($data);
    }

    public function hapus(Request $request)
    {
        //delete data
        MerkModel::findOrFail($request->idmerk)->delete();

        $data['title'] = "Merk";
        Session::flash('status', 'success');
        Session::flash('msg', 'Berhasil dihapus!');

        //redirect to index
        return redirect()->route('merk.index')->with($data);
    }
}
