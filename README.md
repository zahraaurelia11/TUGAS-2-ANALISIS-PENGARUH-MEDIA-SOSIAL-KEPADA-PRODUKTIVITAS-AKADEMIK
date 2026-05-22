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
| Item Pernyataan | r hitung | Kriteria Validitas | Keterangan |
| --------------- | -------- | ------------------ | ---------- |
| P1              | 0,641    | r hitung > 0,30    | Valid      |
| P2              | 0,625    | r hitung > 0,30    | Valid      |
| P3              | 0,541    | r hitung > 0,30    | Valid      |
| P4              | 0,528    | r hitung > 0,30    | Valid      |
| P5              | 0,340    | r hitung > 0,30    | Valid      |
| P6              | 0,703    | r hitung > 0,30    | Valid      |

Berdasarkan hasil uji validitas, seluruh item pernyataan memiliki nilai r hitung lebih besar dari 0,30 sehingga seluruh item dinyatakan valid. Dengan demikian, instrumen penelitian mengenai pengaruh media sosial terhadap produktivitas akademik mahasiswa Program Studi Statistika layak digunakan dalam pengumpulan data penelitian

### Uji Reabilitas
| Variabel                                              | Jumlah Item | Nilai Cronbach’s Alpha | Kriteria Reliabilitas | Keterangan     |
| ----------------------------------------------------- | ----------- | ---------------------- | --------------------- | -------------- |
| Pengaruh Media Sosial terhadap Produktivitas Akademik | 6           | 0,567                  | Alpha > 0,60          | Cukup Reliabel |

Hasil uji reliabilitas menunjukkan nilai Cronbach’s Alpha sebesar 0,567 dengan jumlah item sebanyak 6 pernyataan. Nilai tersebut menunjukkan bahwa instrumen penelitian memiliki tingkat reliabilitas yang cukup dan masih dapat digunakan dalam penelitian.

### Analisis Deskriptif
Analisis deskriptif digunakan untuk menggambarkan distribusi jawaban responden melalui tabel frekuensi, persentase, dan grafik.

### Tabel frekuensi Responden
| Pernyataan                                                       | STS | TS |  N |  S | SS |
| ---------------------------------------------------------------- | --: | -: | -: | -: | -: |
| P1. Media sosial membantu memperoleh informasi pembelajaran      |   1 |  0 |  7 | 19 | 18 |
| P2. Penggunaan media sosial membuat waktu belajar berkurang      |   2 |  4 | 17 | 14 |  8 |
| P3. Saya sering menunda tugas kuliah karena bermain media sosial |   1 |  8 | 14 | 13 |  9 |
| P4. Media sosial meningkatkan motivasi belajar                   |   4 |  4 | 15 | 16 |  6 |
| P5. Saya mampu mengatur waktu antara media sosial dan akademik   |   0 |  4 | 18 | 16 |  7 |
| P6. Media sosial memengaruhi nilai atau prestasi akademik        |   0 |  8 | 17 | 13 |  7 |

STS = Sangat Tidak Setuju
TS = Tidak Setuju
N = Netral
S = Setuju
SS = Sangat Setuju
Berdasarkan tabel frekuensi jawaban responden, sebagian besar mahasiswa cenderung memberikan jawaban setuju dan sangat setuju pada pernyataan bahwa media sosial membantu memperoleh informasi pembelajaran. Sementara itu, pada pernyataan lainnya mayoritas responden memberikan jawaban netral hingga setuju, yang menunjukkan bahwa penggunaan media sosial memiliki pengaruh yang cukup beragam terhadap produktivitas akademik mahasiswa Program Studi Statistika.

#### Tabel Presentase Responden
| Variabel | Pernyataan                                              | Jumlah Setuju + Sangat Setuju | Persentase | Kategori      |
| -------- | ------------------------------------------------------- | ----------------------------: | ---------: | ------------- |
| X1       | Media sosial membantu memperoleh informasi pembelajaran |                            37 |      82,2% | Sangat Tinggi |
| X2       | Penggunaan media sosial membuat waktu belajar berkurang |                            22 |      48,9% | Rendah        |
| X3       | Sering menunda tugas kuliah karena bermain media sosial |                            22 |      48,9% | Rendah        |
| X4       | Media sosial meningkatkan motivasi belajar              |                            22 |      48,9% | Rendah        |
| X5       | Mampu mengatur waktu antara media sosial dan akademik   |                            23 |      51,1% | Cukup         |
| X6       | Media sosial memengaruhi nilai atau prestasi akademik   |                            20 |      44,4% | Rendah        |

Berdasarkan tabel frekuensi responden, pernyataan X1 mengenai media sosial membantu memperoleh informasi pembelajaran memperoleh persentase sebesar 82,2% dengan kategori sangat tinggi. Hal ini menunjukkan bahwa sebagian besar mahasiswa Program Studi Statistika merasakan manfaat media sosial sebagai sarana memperoleh informasi dan mendukung kegiatan pembelajaran.

Pada pernyataan X2, sebesar 48,9% responden menyatakan setuju dan sangat setuju bahwa penggunaan media sosial membuat waktu belajar berkurang dengan kategori rendah. Hal ini menunjukkan bahwa pengaruh media sosial terhadap pengurangan waktu belajar masih tergolong rendah pada sebagian besar mahasiswa.

Pernyataan X3 mengenai kebiasaan menunda tugas kuliah karena bermain media sosial juga memperoleh persentase sebesar 48,9% dengan kategori rendah. Hasil ini menunjukkan bahwa sebagian besar responden tidak terlalu sering menunda tugas akademik akibat penggunaan media sosial.

Selanjutnya, pada pernyataan X4 tentang media sosial meningkatkan motivasi belajar diperoleh persentase sebesar 48,9% dengan kategori rendah. Hal ini mengindikasikan bahwa media sosial belum sepenuhnya mampu meningkatkan motivasi belajar mahasiswa secara signifikan.

Pada pernyataan X5 mengenai kemampuan mengatur waktu antara penggunaan media sosial dan kegiatan akademik diperoleh persentase sebesar 51,1% dengan kategori cukup. Hasil tersebut menunjukkan bahwa mahasiswa cukup mampu menyeimbangkan penggunaan media sosial dengan aktivitas akademiknya.

Terakhir, pada pernyataan X6 mengenai pengaruh media sosial terhadap nilai atau prestasi akademik diperoleh persentase sebesar 44,4% dengan kategori rendah. Hal ini menunjukkan bahwa sebagian besar responden merasa penggunaan media sosial tidak terlalu memengaruhi prestasi akademik mereka secara langsung.

### Naive Estimation
| Item | Setuju | Sangat Setuju | Total Setuju | p̂    | Keterangan    |
| ---- | ------ | ------------- | ------------ | ----- | -------------|
| X1   | 19     | 18            | 37           | 0.822 | Sangat Tinggi|
| X2   | 14     | 8             | 22           | 0.489 | Rendah       |
| X3   | 13     | 9             | 22           | 0.489 | Rendah       |
| X4   | 16     | 6             | 22           | 0.489 | Rendah       |
| X5   | 16     | 7             | 23           | 0.511 | Cukup        |
| X6   | 13     | 7             | 20           | 0.444 | Rendah       |

Berdasarkan hasil naive estimation, variabel X1 memperoleh nilai estimasi sebesar 0,822 atau 82,2% dengan kategori sangat tinggi. Hal ini menunjukkan bahwa sebagian besar responden setuju bahwa media sosial membantu mereka memperoleh informasi pembelajaran. Dengan demikian, media sosial memiliki manfaat positif sebagai sumber informasi akademik bagi mahasiswa.

Pada variabel X2, diperoleh nilai estimasi sebesar 0,489 atau 48,9% dengan kategori rendah. Hasil ini menunjukkan bahwa tidak semua responden merasa penggunaan media sosial menyebabkan waktu belajar mereka berkurang. Artinya, pengaruh media sosial terhadap pengurangan waktu belajar masih relatif rendah.

Variabel X3 memiliki nilai estimasi sebesar 0,489 atau 48,9% dengan kategori rendah. Hal ini menunjukkan bahwa sebagian responden tidak terlalu sering menunda tugas kuliah karena bermain media sosial. Dengan kata lain, media sosial belum menjadi faktor utama yang menyebabkan penundaan tugas pada sebagian besar responden

Pada variabel X4, nilai estimasi sebesar 0,489 atau 48,9% termasuk kategori rendah. Hasil ini menunjukkan bahwa media sosial belum sepenuhnya mampu meningkatkan motivasi belajar responden secara signifikan.

Variabel X5 memperoleh nilai estimasi sebesar 0,511 atau 51,1% dengan kategori cukup. Hal ini menunjukkan bahwa sebagian responden merasa mampu mengatur waktu antara penggunaan media sosial dan kegiatan akademik, meskipun kemampuan tersebut belum tergolong tinggi.
Sementara itu, variabel X6 memiliki nilai estimasi sebesar 0,444 atau 44,4% dengan kategori rendah. Hasil ini menunjukkan bahwa pengaruh media sosial terhadap nilai atau prestasi akademik belum dirasakan secara kuat oleh sebagian besar responden.

Secara keseluruhan, hasil naive estimation menunjukkan bahwa media sosial lebih banyak dimanfaatkan sebagai sarana memperoleh informasi pembelajaran dibandingkan sebagai faktor yang memengaruhi prestasi akademik maupun kebiasaan belajar mahasiswa.

### Weighted Estimation
| Gender                      | Proporsi Kepuasan (4–5) | Proporsi Populasi | Weighted Contribution |
| --------------------------- | ----------------------: | ----------------: | --------------------: |
| Laki-laki                   |                   0.799 |             0.195 |                 0.156 |
| Perempuan                   |                   1.065 |             0.805 |                 0.857 |
| **Total Weighted Estimate** |                       - |                 - |    **1.013 (101,3%)** |

Berdasarkan hasil weighted estimate sebesar 1,013 atau 101,3%, menunjukkan bahwa responden perempuan memberikan kontribusi lebih besar dibandingkan laki-laki terhadap tingkat persetujuan mengenai pengaruh media sosial terhadap produktivitas akademik mahasiswa Program Studi Statistika.

### Perbandingan naive estimation dan weighted estimation 
| Variabel | Naive Estimation | Weighted Estimation | Perbandingan      |
| -------- | ---------------- | ------------------- | ----------------- |
| X1       | 0,822            | 0,815               | Sedikit menurun   |
| X2       | 0,489            | 0,481               | Sedikit menurun   |
| X3       | 0,489            | 0,476               | Sedikit menurun   |
| X4       | 0,489            | 0,495               | Sedikit meningkat |
| X5       | 0,511            | 0,520               | Sedikit meningkat |
| X6       | 0,444            | 0,438               | Sedikit menurun   |

Berdasarkan tabel perbandingan, nilai weighted estimation pada variabel X1, X2, X3, dan X6 mengalami sedikit penurunan dibandingkan naive estimation. Hal ini menunjukkan bahwa setelah dilakukan pembobotan, tingkat persetujuan responden terhadap pernyataan tersebut menjadi sedikit lebih rendah.

Sementara itu, pada variabel X4 dan X5 terjadi sedikit peningkatan nilai weighted estimation dibandingkan naive estimation, yang menunjukkan bahwa setelah mempertimbangkan pembobotan, responden cenderung memberikan penilaian yang lebih positif terhadap pengaruh media sosial pada motivasi belajar dan kemampuan mengatur waktu akademik.

### Distribusi Responden Berdasarkan Gender
| Gender    | Frekuensi | Persentase |
| --------- | --------: | ---------: |
| Laki-laki |        11 |      24,4% |
| Perempuan |        34 |      75,6% |
| **Total** |    **45** |   **100%** |

Berdasarkan tabel distribusi gender, mayoritas responden dalam penelitian ini adalah perempuan dengan jumlah 34 orang atau 75,6%, sedangkan responden laki-laki berjumlah 11 orang atau 24,4%. Hal ini menunjukkan bahwa responden penelitian didominasi oleh mahasiswa perempuan.

### Diagram Batang Distribusi Gender
<img width="417" height="228" alt="barrplot" src="https://github.com/user-attachments/assets/d286ccdf-5bdb-4098-b3b0-e1bfb5311e22" />

Berdasarkan diagram distribusi responden berdasarkan semester, mayoritas responden berasal dari semester 3–4 dengan jumlah sekitar 27 mahasiswa. Sementara itu, responden dari semester 1–2 dan 5–6 masing-masing berjumlah sekitar 8 mahasiswa. Responden dari semester 8 dan yang sudah lulus memiliki jumlah paling sedikit, yaitu masing-masing sekitar 1 orang. Hal ini menunjukkan bahwa penelitian didominasi oleh mahasiswa semester menengah.

### Pie Chart Distribusi Gender
<img width="417" height="228" alt="pie chart" src="https://github.com/user-attachments/assets/9b6e7485-dabe-41a9-9a79-1e24f4fa000d" />

Berdasarkan diagram pie distribusi responden berdasarkan jenis kelamin, mayoritas responden adalah perempuan dengan proporsi yang jauh lebih besar dibandingkan laki-laki. Sementara itu, responden laki-laki hanya mencakup sebagian kecil dari keseluruhan responden. Hal ini menunjukkan bahwa penelitian didominasi oleh mahasiswa perempuan.

## Kesimpulan
Berdasarkan hasil penelitian mengenai analisis pengaruh media sosial terhadap produktivitas akademik mahasiswa Program Studi Statistika dengan menggunakan metode non-probability sampling pada survei online, dapat disimpulkan bahwa media sosial memiliki pengaruh yang beragam terhadap aktivitas akademik mahasiswa. Hasil naive estimation menunjukkan bahwa variabel X1 memperoleh nilai tertinggi sebesar 0,822 dengan kategori sangat tinggi, yang berarti sebagian besar responden setuju bahwa media sosial membantu memperoleh informasi pembelajaran. Sementara itu, variabel X2, X3, X4, dan X6 memiliki kategori rendah, sehingga penggunaan media sosial belum terlalu memengaruhi pengurangan waktu belajar, penundaan tugas, motivasi belajar, maupun prestasi akademik mahasiswa. Variabel X5 memperoleh kategori cukup, yang menunjukkan bahwa sebagian responden merasa mampu mengatur waktu antara penggunaan media sosial dan kegiatan akademik.

Hasil weighting estimation berdasarkan jenis kelamin menunjukkan bahwa nilai weighted estimation tidak berbeda jauh dengan naive estimation, sehingga dapat disimpulkan bahwa sampel penelitian sudah cukup representatif terhadap populasi. Setelah dilakukan pembobotan, pola hasil penelitian tetap sama, yaitu media sosial lebih banyak dimanfaatkan sebagai sarana memperoleh informasi pembelajaran dibandingkan sebagai faktor yang memengaruhi produktivitas akademik mahasiswa secara langsung. Oleh karena itu, media sosial dapat memberikan manfaat positif bagi mahasiswa apabila digunakan secara bijak dan seimbang agar tidak mengganggu aktivitas serta prestasi akademik.

## Link kusioner
https://docs.google.com/forms/d/e/1FAIpQLScOq9AJH_09gDe5kohMfk5utZo1ym5oXKwh2nMciLjuU2rUKQ/viewform
