 #!/bin/bash
 # powered by MR. Raff x Chat Bot

# Fungsi untuk memberi warna pada teks
merah() { echo -e "\e[31m$1\e[0m"; } # Merah
hijau() { echo -e "\e[32m$1\e[0m"; } # Hijau
kuning() { echo -e "\e[33m$1\e[0m"; } # Kuning
biru() { echo -e "\e[34m$1\e[0m"; }   # Biru
ungu() { echo -e "\e[35m$1\e[0m"; }   # Ungu
cyan() { echo -e "\e[36m$1\e[0m"; }   # Cyan
putih() { echo -e "\e[37m$1\e[0m"; } # Putih
bold() { echo -e "\e[1m$1\e[0m"; }   # Tebal

# Meminta input biodata
read -p "Nama Lengkap: " nama
read -p "Tempat/Tanggal Lahir: " ttl
read -p "Alamat: " alamat
read -p "Nomor Telepon: " no_telp
read -p "Email: " email
read -p "Pendidikan Terakhir: " pendidikan

# Menampilkan biodata dengan warna
clear # Membersihkan layar

kuning "===================================="
kuning "|         BIODATA DIRI           |"
kuning "===================================="

biru "Nama Lengkap      : " putih "$nama"
biru "Tempat/Tgl Lahir : " putih "$ttl"
biru "Alamat            : " putih "$alamat"
biru "Nomor Telepon     : " putih "$no_telp"
biru "Email             : " putih "$email"
biru "Pendidikan        : " putih "$pendidikan"

kuning "===================================="

# Opsi Tambahan: Menyimpan biodata ke file
read -p "Simpan biodata ke file? (y/n): " simpan

if [[ "$simpan" == "y" ]]; then
  tanggal=$(date +%Y%m%d_%H%M%S) # Membuat timestamp
  nama_file="biodata_${nama// /_}_${tanggal}.txt" # Membuat nama file unik
  echo "Nama Lengkap      : $nama" >> "$nama_file"
  echo "Tempat/Tgl Lahir : $ttl" >> "$nama_file"
  echo "Alamat            : $alamat" >> "$nama_file"
  echo "Nomor Telepon     : $no_telp" >> "$nama_file"
  echo "Email             : $email" >> "$nama_file"
  echo "Pendidikan        : $pendidikan" >> "$nama_file"
  hijau "Biodata berhasil disimpan ke file: $nama_file"
elif [[ "$simpan" != "n" ]]; then
  merah "Input tidak valid. Biodata tidak disimpan."
fi

kuning "===================================="
