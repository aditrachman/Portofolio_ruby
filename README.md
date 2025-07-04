# Portofolio Ruby

Aplikasi web portofolio sederhana berbasis [Sinatra](http://sinatrarb.com/) dan Ruby untuk menampilkan data diri, keahlian, pengalaman, serta daftar proyek pribadi.

---

## 🚀 Fitur

- **Home**: Menampilkan profil singkat, bio, dan skill.
- **About**: Informasi detail tentang developer.
- **Projects**: Showcase beberapa proyek beserta teknologi yang digunakan dan link demo/GitHub.
- **Contact**: Informasi kontak.
- **API Endpoint**: `GET /api/profile` untuk mengambil data portofolio dalam format JSON.

---

## 📂 Struktur Proyek

```
.
├── app.rb           # Main Sinatra application
├── views/           # Template ERB untuk halaman web
├── GemFile          # Daftar gem/dependensi
├── GemFile.lock     # Kunci versi gem
└── README.md        # Dokumentasi
```

---

## 🛠️ Cara Menjalankan

1. **Pastikan Ruby sudah terinstall**  
   Cek versi Ruby:
   ```bash
   ruby -v
   ```

2. **Install Sinatra dan dependensi lain**
   ```bash
   gem install bundler
   bundle install
   ```

3. **Jalankan aplikasi**
   ```bash
   ruby app.rb
   ```
   Secara default aplikasi berjalan di `http://localhost:4567`

---

## 🔗 Contoh Data Portofolio

- Nama, email, lokasi, bio singkat
- Skills (Ruby, JS, HTML/CSS, React, Node.js, PostgreSQL)
- Projects: E-Commerce Platform, Task Management App, Weather Dashboard
- Experience: Tech Solutions Inc., Digital Agency

Data tersimpan langsung di dalam file `app.rb` (tanpa database).

---

## 📄 Lisensi

Proyek ini untuk kebutuhan personal dan pembelajaran.

---

## 🙋‍♂️ Kontak

Aditrachman  
Email: aditrachman23@email.com  
Lokasi: Magelang, Indonesia

---

> Sederhana, mudah dikembangkan, dan cocok sebagai portofolio online Ruby developer!
