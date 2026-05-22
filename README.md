# TUGAS-2-ANALISIS-PENGARUH-MEDIA-SOSIAL-KEPADA-PRODUKTIVITAS-AKADEMIK
 ## Judul Penelitian
Analisis Pengaruh Meida Sosial Terhadap Produktivitas Akademik Prodi Statistika 

## Latar Belakang
Perkembangan teknologi informasi dan komunikasi pada era digital saat ini telah membawa perubahan besar dalam kehidupan masyarakat, khususnya di kalangan mahasiswa. Salah satu perkembangan yang paling menonjol adalah penggunaan media sosial yang semakin meningkat. Media sosial tidak hanya digunakan sebagai sarana komunikasi dan hiburan, tetapi juga sebagai media pembelajaran, penyebaran informasi, serta pengembangan relasi akademik maupun nonakademik. Platform seperti Instagram, TikTok, WhatsApp, X, dan YouTube telah menjadi bagian dari aktivitas sehari-hari mahasiswa.

Mahasiswa sebagai generasi yang aktif menggunakan teknologi memiliki intensitas penggunaan media sosial yang cukup tinggi. Penggunaan media sosial dapat memberikan dampak positif, seperti mempermudah akses informasi, meningkatkan kreativitas, membantu proses pembelajaran, dan memperluas jaringan komunikasi. Namun, penggunaan media sosial yang berlebihan juga dapat menimbulkan dampak negatif, seperti menurunnya fokus belajar, meningkatnya perilaku menunda pekerjaan (prokrastinasi), serta berkurangnya efektivitas waktu belajar yang pada akhirnya dapat memengaruhi produktivitas mahasiswa.

Produktivitas mahasiswa merupakan kemampuan mahasiswa dalam menyelesaikan tugas akademik secara efektif dan efisien, baik dalam hal manajemen waktu, pencapaian akademik, maupun keterlibatan dalam kegiatan perkuliahan. Tingkat produktivitas mahasiswa dapat dipengaruhi oleh berbagai faktor, salah satunya adalah penggunaan media sosial. Intensitas penggunaan media sosial yang tidak terkontrol dapat menyebabkan mahasiswa lebih banyak menghabiskan waktu untuk aktivitas nonakademik dibandingkan kegiatan belajar.

Mahasiswa dari berbagai fakultas memiliki karakteristik dan pola penggunaan media sosial yang berbeda-beda sesuai dengan bidang keilmuan dan aktivitas akademiknya. Oleh karena itu, penelitian ini dilakukan pada mahasiswa Fakultas Ekonomi dan Bisnis (FEB), Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA), Fakultas Teknik, Fakultas Keguruan dan Ilmu Pendidikan (FKIP), serta Fakultas Kedokteran dan Ilmu Kesehatan (FKIK). Penelitian ini bertujuan untuk mengetahui bagaimana pengaruh media sosial terhadap produktivitas mahasiswa pada berbagai fakultas tersebut sehingga dapat memberikan gambaran mengenai dampak penggunaan media sosial dalam kehidupan akademik mahasiswa.

Dengan adanya penelitian ini, diharapkan dapat diperoleh informasi yang bermanfaat bagi mahasiswa maupun pihak kampus dalam memahami pengaruh media sosial terhadap produktivitas akademik serta menjadi bahan pertimbangan dalam penggunaan media sosial secara lebih bijak dan produktif.
    
## Tujuan Penelitian
1. Untuk mengetahui tingkat penggunaan media sosial pada mahasiswa program studi statistika.
2. Untuk mengetahui tingkat produktivitas mahasiswa program studi statistika.
3. Untuk menganalisis pengaruh media sosial terhadap produktivitas mahasiswa program studi statistika..
4. Untuk mengetahui apakah terdapat perbedaan pengaruh media sosial terhadap produktivitas mahasiswa  program studi             statistika.
    
## Metode Penelitian
Penelitian ini menggunakan metode penelitian kuantitatif dengan pendekatan survei. Pendekatan kuantitatif digunakan karena penelitian bertujuan untuk mengetahui pengaruh media sosial terhadap produktivitas mahasiswa berdasarkan data numerik yang diperoleh melalui penyebaran kuesioner.

Populasi dalam penelitian ini adalah mahasiswa Fakultas Ekonomi dan Bisnis (FEB), Fakultas Matematika dan Ilmu Pengetahuan Alam (FMIPA), Fakultas Teknik, Fakultas Keguruan dan Ilmu Pendidikan (FKIP), serta Fakultas Kedokteran dan Ilmu Kesehatan (FKIK). Sampel penelitian diambil menggunakan teknik purposive sampling, yaitu pemilihan responden berdasarkan kriteria tertentu, seperti mahasiswa aktif yang menggunakan media sosial.

Teknik pengumpulan data dilakukan melalui penyebaran kuesioner menggunakan Google Form. Instrumen penelitian menggunakan skala Likert dengan beberapa pilihan jawaban, mulai dari sangat setuju hingga sangat tidak setuju. Variabel independen dalam penelitian ini adalah penggunaan media sosial, sedangkan variabel dependen adalah produktivitas mahasiswa.

Data yang diperoleh kemudian dianalisis menggunakan analisis statistik, seperti uji validitas, uji reliabilitas, analisis deskriptif, serta analisis regresi untuk mengetahui pengaruh media sosial terhadap produktivitas mahasiswa. Hasil analisis tersebut diharapkan dapat memberikan gambaran mengenai hubungan antara penggunaan media sosial dan tingkat produktivitas mahasiswa pada berbagai fakultas yang diteliti.

## Tahapan Analisis Data 
### 1. Import data  
Pada tahap ini, data hasil survei yang telah disimpan dalam file Excel diimpor ke dalam R menggunakan package readxl. Proses ini bertujuan agar data dapat diolah dan dianalisis lebih lanjut.
~~~R
#IMPORT DATA
library(readxl)
data_teksam <- read_excel("teknik sampling/data teksam.xlsx", 
                          col_types = c("numeric", "text", "text", 
                                        "text", "text", "text", "text", "numeric", 
                                        "numeric", "numeric", "numeric", 
                                        "numeric", "numeric", "numeric"))
View(data_teksam)
~~~

### 2.  Perhitungan Sampel Menggunakan Metode Slovin
Pada tahap ini dilakukan perhitungan jumlah sampel minimum menggunakan metode Slovin. Metode ini digunakan untuk menentukan jumlah sampel berdasarkan jumlah populasi dan margin of error yang digunakan dalam penelitian.
~~~R
# Jumlah populasi
N <- 154
# Margin of error 12,5%
e <- 0.125
# Rumus Slovin
n <- N / (1 + (N * e^2))
# Hasil
n
~~~

### 3. Uji validitas dan reabilitas 
Uji validitas dan uji reliabilitas merupakan tahapan pengujian instrumen penelitian yang dilakukan untuk memastikan kualitas kuesioner. Uji validitas bertujuan untuk mengetahui apakah setiap item pertanyaan mampu mengukur variabel yang diteliti dengan tepat, sedangkan uji reliabilitas bertujuan untuk mengetahui tingkat konsistensi atau keandalan instrumen dalam memberikan hasil pengukuran. Instrumen dinyatakan valid apabila nilai korelasi item lebih besar dari nilai rrr tabel, dan dinyatakan reliabel apabila nilai Cronbach’s Alpha menunjukkan tingkat konsistensi yang memadai.
#### Uji validitas 
~~~R
# UJI VALIDITAS
# Ambil item kuesioner
item <- data_responden[, c("P1","P2","P3","P4","P5","P6")]
# Uji validitas
corr.test(item)
# Skor total
total <- rowSums(item)
# Korelasi item-total
cor(item, total)
~~~
#### Uji reabilitas 
~~~R
# UJI REABILITAS
# Uji reliabilitas Cronbach Alpha
alpha(item)$total
# Menampilkan hasil cronbach Alphanya saja
alpha(item)$total$raw_alpha
~~~

### 4. Analisis Deskriptif
Analisis ini dilakukan untuk mengetahui distribusi responden berdasarkan jenis kelamin. Fungsi table() digunakan untuk menghitung jumlah responden pada setiap kategori, sedangkan prop.table() digunakan untuk menghitung persentasenya.
~~~R
# STATISTIKA DESKRIPTIF
table(data_teksam$`Jenis Kelamin`)
prop.table(table(data_teksam$`Jenis Kelamin`)) * 100
table(data_teksam$`Semester`)
prop.table(table(data_teksam$`Semester`))*100
~~~
### 5. Tabel Distribusi Frekuensi dan Persentase
Tahap ini bertujuan untuk menyajikan data dalam bentuk tabel yang lebih rapi agar mudah dibaca dan diinterpretasikan.
~~~R
 #Distribusi Frekuensi dan Persentase

frekuensi <- table(data_teksam$`Jenis Kelamin`)
frekuensi

persentase <- prop.table(frekuensi) * 100
persentase

tabel_jk <- data.frame(
  Jenis_Kelamin = names(frekuensi),
  Frekuensi = as.vector(frekuensi),
  Persentase = round(as.vector(persentase), 2)
)

tabel_jk

frekuensi_Semester <- table(data_teksam$`Semester`)
persentase_Semester <- prop.table(frekuensi_Semester)*100

tabel_prodi <- data.frame(
  Semester = names(frekuensi_Semester),
  Frekuensi = as.vector(frekuensi_Semester),
  Persentase = round(as.vector(persentase_Semester),2)
)

tabel_prodi
~~~
### 6. Grafik Distribusi Responden
Grafik pie digunakan untuk memvisualisasikan distribusi responden berdasarkan jenis kelamin sehingga lebih mudah dipahami secara visual.
~~~R
pie(
  table(data_teksam$`Jenis Kelamin`),
  main = "Distribusi Responden Berdasarkan Jenis Kelamin"
)

frekuensi_prodi <- sort(table(data_teksam$`Semester`), decreasing = TRUE)

barplot(
  frekuensi_prodi,
  main = "Distribusi Responden Berdasarkan Program Studi",
  xlab = "Program Studi",
  ylab = "Frekuensi",
  col = "pink"
~~~
### 7.  Naive Estimation Tingkat Kepuasan
Naive estimation digunakan untuk memperoleh estimasi awal tingkat kepuasan mahasiswa. Responden dianggap puas jika memberikan nilai ≥ 4 (skala Likert). Nilai proporsi dihitung dengan membagi jumlah responden yang puas dengan total responden.
~~~R
# Tampilkan Presentase 
lapply(item, function(x) prop.table(table(x))*100)
# Hitung jumlah jawaban puas (4 dan 5)
puas <- sum(item == 4 | item == 5)
# Hitung total seluruh jawaban
total_jawaban <- length(as.matrix(item))
# Naive Estimate
naive <- puas / total_jawaban
# Tampilkan hasil
naive
~~~
### 8. Weighting Sederhana Berdasarkan Jenis Kelamin
Weighting dilakukan untuk mengurangi bias akibat ketidakseimbangan sampel. Bobot dihitung berdasarkan perbandingan antara proporsi populasi dan proporsi sampel.
~~~R
# RESPONDEN LAKI-LAKI
Laki_laki <- data_responden[
  data_responden$`Jenis Kelamin` == "Laki- laki",
  c("P1","P2","P3","P4","P5","P6")
]
# Proporsi puas laki-laki
puas_Laki_laki <- sum(Laki_laki == 4 | Laki_laki == 5)
total_Laki_laki <- length(as.matrix(Laki_laki))
p_Laki_laki <- puas_Laki_laki / total_Laki_laki
# RESPONDEN PEREMPUAN
perempuan <- data_responden[
  data_responden$`Jenis Kelamin` == "perempuan",
  c("P1","P2","P3","P4","P5","P6")
]
# Proporsi puas perempuan
puas_perempuan <- sum(perempuan == 4 | perempuan == 5)
total_perempuan <- length(as.matrix(perempuan))
p_perempuan <- puas_perempuan / total_perempuan
# WEIGHTED ESTIMATE
weighted <- (0.799 * p_Laki_laki) + (1.065 * p_perempuan)
weighted
~~~
### 9. Perbandingan Naive Estimation dan Weighting Estimation
Tahap ini bertujuan untuk membandingkan hasil estimasi sebelum dan sesudah dilakukan pembobotan menggunakan grafik batang.
~~~R
# PERBANDINGAN HASIL

hasil <- data.frame(
  Metode = c("Naive Estimation", "Weighted Estimation"),
  Nilai = c(naive, weighted)
)
hasil
~~~
## Hasil dan Pembahasan
### uji Validitas 
