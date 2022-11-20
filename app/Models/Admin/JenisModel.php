<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JenisModel extends Model
{
    use HasFactory;
    protected $table = "tbl_jenis";
    protected $primaryKey = 'jenis_id';
    protected $fillable = [
        'jenis_nama',
        'jenis_slug',
        'jenis_keterangan'
    ]; 
}
