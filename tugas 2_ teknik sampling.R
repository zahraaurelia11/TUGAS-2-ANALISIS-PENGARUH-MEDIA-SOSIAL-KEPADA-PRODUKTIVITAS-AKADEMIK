#IMPORT DATA
library(readxl)
data_teksam <- read_excel("teknik sampling/data teksam.xlsx", 
                          col_types = c("numeric", "text", "text", 
                                        "text", "text", "text", "text", "numeric", 
                                        "numeric", "numeric", "numeric",                                       "numeric", "numeric", "numeric"))
View(data_teksam)
# Jumlah populasi
N <- 154
# Margin of error 12,5%
e <- 0.125
# Rumus Slovin
n <- N / (1 + (N * e^2))
# Hasil
n
# UJI VALIDITAS
# Ambil item kuesioner
item <- data_responden[, c("P1","P2","P3","P4","P5","P6")]
# Uji validitas
corr.test(item)
# Skor total
total <- rowSums(item)
# Korelasi item-total
cor(item, total)
# UJI REABILITAS
# Uji reliabilitas Cronbach Alpha
alpha(item)$total
# Menampilkan hasil cronbach Alphanya saja
alpha(item)$total$raw_alpha
# STATISTIKA DESKRIPTIF
table(data_teksam$`Jenis Kelamin`)
prop.table(table(data_teksam$`Jenis Kelamin`)) * 100
table(data_teksam$`Semester`)
prop.table(table(data_teksam$`Semester`))*100
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
  # PERBANDINGAN HASIL
  
  hasil <- data.frame(
    Metode = c("Naive Estimation", "Weighted Estimation"),
    Nilai = c(naive, weighted)
  )
  hasil