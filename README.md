Analisis Kinerja Bisnis Kimia Farma 2020-2023

Deskripsi Proyek :
Proyek ini merupakan bagian dari Final Task untuk peran Big Data Analytics Intern di Kimia Farma. Tujuannya adalah untuk melakukan evaluasi komprehensif terhadap kinerja bisnis Kimia Farma dari tahun 2020 hingga 2023. Proyek ini mencakup seluruh alur kerja analitik, mulai dari pengolahan data mentah hingga penyajian wawasan bisnis melalui dashboard interaktif.

Metodologi :
Proyek ini mengikuti alur kerja analitik data yang terstruktur:

1. Importing Dataset to BigQuery: Empat dataset utama yang disediakan (kf_final_transaction.csv, kf_product.csv, kf_inventory.csv, kf_kantor_cabang.csv) diimpor ke Google BigQuery. Data ini ditempatkan dalam sebuah dataset khusus untuk Kimia Farma.

2. Pembuatan Tabel Analisa: Kami membuat tabel analisa utama bernama analisa_dashboard_kimia_farma dengan menggabungkan keempat tabel sumber menggunakan BigQuery SQL. Tabel ini juga mencakup perhitungan metrik kunci seperti nett_sales dan nett_profit, yang sangat penting untuk analisis.

3. Pembuatan Dashboard di Looker Studio: Berdasarkan tabel analisa yang telah dibuat, dashboard interaktif dirancang di Google Looker Studio untuk memvisualisasikan data kinerja.

Dataset :
Proyek ini menggunakan dataset berikut:

kf_final_transaction: Berisi detail transaksi penjualan.

kf_product: Berisi informasi produk.

kf_inventory: Berisi data inventaris produk di cabang.

kf_kantor_cabang: Berisi informasi lokasi dan rating cabang.

Insight Utama dari Analisis:
Berikut adalah beberapa temuan kunci dari analisis data periode 2020-2023:

Kinerja Finansial: Total pendapatan bersih mencapai Rp 321 Miliar dengan total keuntungan bersih Rp 91 Miliar. Pendapatan tahunan stabil, dengan puncak tertinggi di tahun 2022.

Tren Bulanan: Tren penjualan dan profit bulanan cenderung stabil, namun menunjukkan margin laba yang cenderung tipis.

Performa Wilayah: Provinsi Jawa Barat mendominasi baik dari sisi jumlah transaksi (198 ribu kali) maupun penjualan bersih (Rp 94,87 miliar), serta menjadi penyumbang keuntungan terbesar.

Produk Terlaris: Kategori produk R06 menjadi kontributor penjualan bersih terbesar dengan pangsa pasar sekitar 20,2%.

Anomali Rating: Ditemukan adanya cabang dengan rating tertinggi (5), tetapi memiliki rating transaksi terendah (3), sebuah anomali yang membutuhkan investigasi lebih lanjut.

Dashboard dan Visualisasi
Dashboard Looker Studio yang dibuat mencakup visualisasi sebagai berikut:

Dashboard Summary: Menampilkan metrik utama seperti total pendapatan, profit, jumlah transaksi, dan jumlah pelanggan.

Tren Pendapatan Tahunan & Bulanan: Menggunakan Line Chart untuk memvisualisasikan fluktuasi kinerja finansial dari waktu ke waktu.

Top Provinsi: Bar Chart untuk menunjukkan 10 provinsi teratas berdasarkan total transaksi dan penjualan bersih.

Peta Profit: Geo Map untuk memvisualisasikan kontribusi profit dari masing-masing provinsi.

Distribusi Penjualan: Pie Chart untuk menganalisis kontribusi penjualan per kategori produk.

Tabel Analisis: Tabel untuk mengidentifikasi anomali rating pada cabang dan daftar pelanggan teratas.
