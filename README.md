![201010759-6eb0901a-8490-43f1-8b6a-772b39965a3e](https://user-images.githubusercontent.com/47371845/202890941-cef1be66-cc32-4b19-9067-f57b4aa220d0.png)

## *:information_source: Inventoryweb*
Aplikasi ini bisa anda gunakan untuk mengontrol stock barang yang anda miliki sehingga jelas transaksi keluar dan masuk barang tersebut juga mempermudah kontrol barang tersebut.
<br><br>
Untuk tampilannya saya sudah pasang template admin `bootstrap v5` yaitu `sash admin`.

## *:sparkles: Fitur*
* **Dashboard** `Progress`
* **Jenis Barang**
* **Satuan Barang**
* **Merk Barang**
* **Barang**
* **Customer**
* **Barang Masuk**
* **Barang Keluar**
* **Laporan Barang Masuk** `Progress`
* **Laporan Barang Keluar** `Progress`
* **Setting Website**
* **Setting Hak Akses user per Role**
* **Setting Menu (bisa tambah menu atau bisa hapus menu)**

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
#### :arrow_right: Clone Project / Download File
Clone Project dengan perintah terminal `gitbash` sebagai berikut:
```
git clone git@github.com:radhiant/laravel-inventoryweb.git
```
Atau bisa klik tombol download Zip dan extrak file tersebut
#### :arrow_right: Buat Database
Buat Database `db_inventoryweb`
#### :arrow_right: Config ENV
Ubah file dari `env.development` jadi `.env`

Setting `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD` yang ada di file `.env` sesuai Nama Database mysql kalian

#### :arrow_right: Set Up
Buka Terminal di proyek folder Anda dan jalankan perintah dibawah ini:
```
composer install
```
```
php artisan storage:link
```
#### :arrow_right: Import Database
Import file database `db_inventoryweb.sql` yang ada di folder `database/db` ke phpmyadmin 

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
![35ace435-364a-4687-ad3d-cb20c8919f54](https://user-images.githubusercontent.com/47371845/204803970-3270fa90-2d36-473d-b5fa-344ce6802d85.png)
![b0a513c2-c7e7-4098-860e-a67c620f315d](https://user-images.githubusercontent.com/47371845/204021044-fb76df11-c80a-4d54-b0b3-f58b223c91fb.png)
![46e7cb6f-f5e5-4d83-8f13-6b0ac51783de](https://user-images.githubusercontent.com/47371845/204021072-516b1518-4a18-493b-ba81-128f38550ca2.png)
![d0b00488-665f-40fd-bd13-80700dcfda55](https://user-images.githubusercontent.com/47371845/204021113-74fe9e9f-2c3b-4209-9f72-220ba75a525e.png)
![99c8e171-c9d2-411b-b051-d5a00720fffa](https://user-images.githubusercontent.com/47371845/204021125-811b25be-9e60-43ea-a3a2-41fed58b2c63.png)
![87663504-3da5-4153-9eaf-ab6b0fdab721](https://user-images.githubusercontent.com/47371845/204067965-1c237723-1bf0-4bd2-bcb4-849843f03fdc.png)
![dbb52cc8-fc45-4abe-a9dd-4ffcf5107c4c](https://user-images.githubusercontent.com/47371845/204021151-76cec801-0b2d-4cf1-9282-334f88865cf3.png)
![f23b34f3-4a46-4559-9943-a0a3d3f80178](https://user-images.githubusercontent.com/47371845/204021178-d7ad1914-996e-459f-bd69-ec6424a84b34.png)
![f8a4bf7a-7732-408c-b462-84954ec703c3](https://user-images.githubusercontent.com/47371845/204021197-a312efcd-12b6-4317-b0a1-8a917d4d5b88.png)
![be176cc7-11f6-4f80-a3d6-bae661c55d35](https://user-images.githubusercontent.com/47371845/204021223-6f637c19-d8ba-4c11-8151-38abd5093a8a.png)
![836091d5-1691-412f-8b70-10c1919c2343](https://user-images.githubusercontent.com/47371845/204021241-971d9e7d-cb32-4dc3-b059-a8840bc7d3c7.png)
![dcda1efd-7060-42cb-845e-d6b1c5dd85b7](https://user-images.githubusercontent.com/47371845/204021259-67c28a2c-141f-4632-9c7f-0be855aa1b46.png)
![d50d104b-6d77-499a-be5b-eb80ad6f6c35](https://user-images.githubusercontent.com/47371845/204021276-fd3219b8-37fb-42a6-852a-6e20e3206b48.png)

