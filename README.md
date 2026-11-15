# Aplikasi Profil Mahasiswa

Aplikasi Flutter Android yang menampilkan profil diri, dibuat untuk
**UTS Pemrograman Mobile Lanjut – Soal 2**.

## Identitas

- **Nama:** Bayu Sukma
- **NIM:** 1124160034
- **Program Studi:** Teknik Informatika
- **Kelas:** TI 24 SE-3

## Video Presentasi

Work on Progress.

<!-- YouTube: https://youtu.be/XXXXXXXXXXX -->

## Screenshot

Work on Progress.

<!-- | Login | Profil | Edit Profil |
|-------|--------|-------------|
| ![Login](screenshots/login.png) | ![Profil](screenshots/profile.png) | ![Edit Profil](screenshots/edit_profile.png) | -->

## Fitur

- **Halaman Login**: `Form` dengan validator, indikator loading, dan
  perpindahan halaman memakai `pushReplacement`.
- **Halaman Profil**: foto dari `assets/images/` dengan `CircleAvatar`, nama,
  NIM, program studi, kelas, bio singkat, statistik seperti Followers dan Following,
  serta kontak (email, nomor HP, GitHub) memakai `Card` + `ListTile` berikon.
- **Halaman Edit Profil**: nilai awal form diambil dari `TextEditingController`.
  Validasi: nama wajib diisi, email valid, nomor HP hanya angka 10-13 digit.
  Tombol Simpan mengirim data baru dengan `Navigator.pop(context, dataBaru)`,
  lalu Halaman Profil langsung diperbarui dengan `setState()`.
- **Halaman Tentang Saya**: daftar keahlian/hobi dan riwayat pendidikan
  memakai `ListView`.
- **Scaffold lengkap**: `AppBar`, `body`, `Drawer`, dan `FloatingActionButton`.
- **Tema terang dan gelap** dengan warna sendiri. Tombol di AppBar dan switch
  di drawer mengubah `themeMode` secara langsung. Saat dibuka, aplikasi
  mengikuti tema sistem yang digunakan.

## Struktur Kode

```
lib/
├── main.dart                  # MaterialApp, tema, routes
├── models/
│   └── profile.dart           # class Profile
├── screens/
│   ├── login_page.dart
│   ├── profile_page.dart
│   ├── edit_profile_page.dart
│   └── about_page.dart
└── widgets/                   # widget yang dipakai ulang
    ├── info_tile.dart         # kartu kontak (ikon, judul, nilai)
    ├── profile_stat.dart      # bagian statistik Follower/Following
    ├── stats_item.dart        # kolom yang membungkus profile stat
    └── about.dart             # icon, label, dan value yang digunakan pada card di halaman about me.
```

## Akun Demo

- Username: `Bayu`
- Password: `945313`

## Cara Menjalankan

Prasyarat: Flutter SDK dan emulator atau HP Android.

```bash
flutter pub get
flutter run
```

## Unduh APK

APK rilis tersedia di halaman

<!-- [Releases](../../releases/tag/v1.0.0). -->
