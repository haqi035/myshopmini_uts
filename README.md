# 📱 MyShop Mini – UTS Pemrograman Mobile (Flutter)

Ahmad Baihaqi Hafid/ 231080200035

5B1/ Informatika

---

## 🚀 APP START
**Aplikasi dimulai dari `main.dart` dan langsung tampil HomeScreen.**

---

# 🏠 HomeScreen
<img width="286" height="598" alt="image" src="https://github.com/user-attachments/assets/84c4a95b-adcf-4e16-b4bd-b1bc2b2ce114" />
<img width="286" height="597" alt="image" src="https://github.com/user-attachments/assets/77076b77-4e52-4173-b57c-06de0255c757" />
<img width="283" height="597" alt="image" src="https://github.com/user-attachments/assets/76b9b7f0-8ca1-479a-85b1-999bf2214e50" />

### **TITLE: "MyShop Mini"**
Ditampilkan melalui:
- `AppBar(title: Text("MyShop Mini"))`  
**Fungsi:** Menampilkan judul aplikasi.

---

## 🧱 UI
HomeScreen menggunakan komponen utama **Column**, berisi:

### **1. Text(title)**
- Widget: `Text("Kategori")`
- **Fungsi:** Menampilkan judul bagian kategori.

### **2. Row: 3 Card (kategori)**
- Widget: `Row(children: [...])`
- **Fungsi:** Menampilkan 3 kategori secara horizontal.

---

## 📦 Card Kategori
Setiap Card berisi:

### **icon**
- Widget: `Image.asset("...")`
- **Fungsi:** Visual kategori (pengganti Icon bawaan Flutter).

### **label**
- Widget: `Text(category.name)`
- **Fungsi:** Menampilkan nama kategori.

### **onTap kategori**
Saat card diklik:

NAVIGATE TO ProductListScreen WITH selectedCategory
- Widget pendukung: `GestureDetector` / `InkWell`
- **Fungsi:** Berpindah ke halaman daftar produk sesuai kategori yang dipilih.

---

# 🛒 ProductListScreen
### **TITLE: "[Nama Kategori]"**
- Widget: `AppBar(title: Text(category.name))`
- **Fungsi:** Menampilkan nama kategori aktif.

---

## 🧱 UI
Halaman menggunakan **Column**, berisi:

### **1. Text(title)**
- Widget: `Text(category.name)`
- **Fungsi:** Label halaman untuk kategori tersebut.

### **2. Grid (2 kolom) berisi produk**
- Widget: `GridView.builder(crossAxisCount: 2)`
- **Fungsi:** Menampilkan produk dalam bentuk grid yang rapi.

---

## 🛍️ Card Produk
Setiap item produk berisi:

### **icon**
- Widget: `Image.asset(product.image)`
- **Fungsi:** Menampilkan gambar produk.

### **label**
- Widget: `Text(product.name)`
- **Fungsi:** Menampilkan nama produk.

### **price**
- Widget: `Text("Rp ...")`
- **Fungsi:** Menampilkan harga produk.

### **onTap product**
Saat produk ditekan:

NAVIGATE TO ProductDetailScreen WITH productData
- Widget pendukung: `GestureDetector` / `InkWell`

---

# 📦 ProductDetailScreen
Halaman detail produk menggunakan **Center + Column**, berisi:

### **1. Icon/Image**
- Widget: `Image.asset(product.image)`
- **Fungsi:** Menampilkan gambar produk secara jelas.

### **2. Text(product.name)**
- Fungsi: Menampilkan nama produk.

### **3. Text(product.price)**
- Fungsi: Menampilkan harga lengkap.

---

## 🔙 onTap back
Perintah:

NAVIGATE BACK to ProductListScreen
Menggunakan:
- `Navigator.pop(context)`
- **Fungsi:** Kembali ke daftar produk.

---

Aplikasi ini memiliki alur:
1. Home → pilih kategori  
2. Tampilkan produk dalam Grid  
3. Klik produk → tampil detail  
4. Tombol kembali → kembali ke list  

