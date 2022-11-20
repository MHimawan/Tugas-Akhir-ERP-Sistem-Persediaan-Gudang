

## *:information_source: Inventoryweb*
Aplikasi ini bisa anda gunakan untuk mengontrol stock barang yang anda miliki sehingga jelas transaksi keluar dan masuk barang tersebut juga mempermudah kontrol barang tersebut, jika anda pelaku UMKM dan butuh sistem inventory stock barang maka aplikasi ini adalah jawabannya.
<br><br>
Untuk tampilannya saya sudah pasang template admin `bootstrap v5` yaitu `sash admin`.

## *:sparkles: Fitur*
* **Dashboard**
* **Jenis Barang**
* **Satuan Barang**
* **Merk Barang**
* **Barang**
* **Barang Masuk**
* **Barang Keluar**
* **Laporan Barang Masuk**
* **Laporan Barang Keluar**
* **Setting Website**
* **Setting Hak Akses user per Role**
* **Setting Menu Navigasi (bisa tambah navigasi atau bisa hapus navigasi)**

## *:electric_plug: Plugin*
* **Yajra Datatables**
* **SweetAlert**
* **jQuery**
* **dan banyak lagi..**

## *:gear: Requirement*
<p>
<img alt="gambar" src="https://img.shields.io/badge/PHP%20-%5E8.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Node JS%20-%5E16.14.0-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Npm%20-%5E8.3.1-green"/>
<img alt="gambar" src="https://img.shields.io/badge/Composer%20-%5E2.3.9-green"/>
</p>

## *:rocket: Instalasi*
#### :arrow_right: Buat Database
Buat Database `db_inventoryweb`
#### :arrow_right: Config ENV
Ubah file dari `env.development` jadi `.env`
#### :arrow_right: Set Up
Buka Terminal di proyek folder Anda dan jalankan perintah dibawah ini:
```
composer install
```
```
php artisan migrate
```
```
php artisan db:seed
```
```
php artisan storage:link
```
#### :arrow_right: Import Database
Import file database ke phpmyadmin yang ada di folder `database/db`

#### :arrow_right: Jalankan Aplikasi
```
php artisan serve
```
copy & paste `http://127.0.0.1:8000/` ke browser anda.

#### :arrow_right: Login Default
username: `superadmin` password: `12345678`
<br>
username: `admin` password: `12345678`
<br>
username: `operator` password: `12345678`

## *:desktop_computer: Preview*
![ad3c121d-1c33-4b7f-aa0f-5bb2ddce7cf6](https://user-images.githubusercontent.com/47371845/202890250-2c1e64c6-cc01-453f-b490-43eecab1e153.png)



