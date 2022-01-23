## Assignment Day 3 - Data Science bootcamp batch 8 ##

# soal no.1
# buat data frame dari profil user yang terdiri dari kolom berikut:
# 1. Nama
# 2. Tempat Lahir
# 3. Tanggal Lahir
# 4. Tanggal terakhir belanja
# 5. Rata-rata amount belanja per bulan (Rp)
# 6. Total transaksi per bulan
# buatlah data minimal 5 user

Nama <- c('Yosuke', 'Chie', 'Yukiko', 'Kanji', 'Rise', 'Naoto')
Tempat_Lahir <- c('Jakarta', 'Bandung', 'Madrid', 'Stockholm', 'Berlin', 'Dubai')
Tanggal_Lahir <- c('22 Juni 1994', '30 Juli 1994', '8 Desember 1994', '19 Januari 1996', '1 Juni 1995', '27 April 1995')
Tanggal_terakhir_belanja <- c('11 November 2021', '11 November 2021', '11 November 2021', '11 November 2021', '11 November 2021', '11 November 2021')
RataRata_amount_transaksi_belanja_per_bulan <- c(80000, 60000, 95000, 300000, 500000, 750000)
Total_transaksi_per_bulan <- c(3, 8, 4, 10, 9, 5)

profil_user <- data.frame(Nama,Tempat_Lahir,Tanggal_Lahir,Tanggal_terakhir_belanja,RataRata_amount_transaksi_belanja_per_bulan,Total_transaksi_per_bulan)
profil_user

View(profil_user)

# soal no.2
# Dari data frame tersebut pilihlah user yang paling loyal berbelanja.
# Dimana user loyal adalah user yang memiliki rata-rata amount belanja per bulan 
# di atas 100 ribu rupiah dan total transaksi per bulan di atas 5.

profil_user$RataRata_amount_transaksi_belanja_per_bulan > 100000
profil_user$Total_transaksi_per_bulan > 5
profil_user$RataRata_amount_transaksi_belanja_per_bulan > 100000 & Total_transaksi_per_bulan > 5
profil_user[RataRata_amount_transaksi_belanja_per_bulan > 100000 & Total_transaksi_per_bulan > 5,]

