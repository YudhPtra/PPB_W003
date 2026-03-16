# Flutter Layouting & State Management: CounterApp

Proyek ini merupakan aplikasi Flutter dasar yang mendemonstrasikan teknik **Layouting** menggunakan widget struktural serta implementasi **State Management** sederhana untuk fitur interaktif.

## Deskripsi Proyek
Aplikasi ini menampilkan antarmuka yang responsif dengan susunan elemen vertikal dan horizontal. Selain fokus pada desain UI, aplikasi ini juga menerapkan `StatefulWidget` untuk mengelola data dinamis pada fitur Counter.

---

## Analisis Struktur Kode

### 1. Root & Navigation
* **`MyApp`**: Entry point aplikasi yang mengatur tema global menggunakan `Material3` dan menentukan `CounterApp` sebagai halaman utama.
* **`CounterApp` & `_CounterAppState`**: Implementasi `StatefulWidget`. Nama kelas ini mengikuti standar penamaan private state untuk menjaga enkapsulasi logika bisnis di dalam satu file.

### 2. Breakdown Kontainer (Body)
Seluruh elemen dibungkus dalam `Column` yang membagi halaman menjadi empat bagian utama:

#### **A. Blok Visual (Image Box)**
* **Widget**: `AspectRatio(aspectRatio: 1.0)` & `Image.network`.
* **Warna**: `Colors.lightBlue[100]`.
* **Fungsi**: Menampilkan aset gambar secara responsif dengan rasio tetap (persegi) menggunakan `BoxFit.cover`.

#### **B. Blok Keterangan (Caption Box)**
* **Widget**: `Container` & `Text`.
* **Warna**: `Colors.pink[200]`.
* **Fungsi**: Memberikan label teks atau deskripsi singkat untuk elemen visual di atasnya.

#### **C. Blok Menu (Icon Row)**
* **Widget**: `Row` dengan `MainAxisAlignment.spaceEvenly`.
* **Warna**: `Colors.yellow[200]`.
* **Isi**: Terdiri dari tiga `Column` yang masing-masing berisi `Icon` dan `Text` (Food, Scenery, People).
* **Fungsi**: Menampilkan navigasi atau kategori fitur secara horizontal dengan jarak antar elemen yang proporsional.

#### **D. Blok Interaktif (Counter Box)**
* **Widget**: `Row` dengan `MainAxisAlignment.spaceBetween`.
* **Warna**: `Colors.cyan[100]`.
* **Fungsi**: Menampilkan status angka terbaru dan menyediakan `IconButton` untuk menambah nilai secara *real-time*.

---

## Logika State Management

Aplikasi ini mengadopsi pola `StatefulWidget` untuk menangani perubahan UI tanpa harus memuat ulang seluruh aplikasi.

1. **Variabel `_counter`**: Disimpan di dalam state kelas `_CounterAppState` dengan nilai awal `0`.
2. **Method `_incrementCounter()`**: Fungsi yang memanggil `setState()`. Saat dipanggil, fungsi ini akan menambah nilai `_counter` dan memerintahkan Flutter untuk melakukan *re-build* pada widget yang terdampak.
3. **String Interpolation**: Nilai variabel dipanggil langsung di dalam widget Text menggunakan sintaks `'$_counter'`.

---

## Responsivitas
Untuk memastikan tampilan tetap rapi di berbagai ukuran layar perangkat, proyek ini memanfaatkan:
* **`MediaQuery.of(context).size.width`**: Mengatur lebar kontainer agar selalu mengikuti persentase lebar layar asli (full-width).
* **`EdgeInsets`**: Memberikan margin dan padding yang presisi agar konten tidak terpotong (overflow).