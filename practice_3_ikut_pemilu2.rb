semua_warga = [
  { nama: 'Ujang', usia: 23, profesi: 'guru' },
  { nama: 'Beni', usia: 17, profesi: 'pedagang' },
  { nama: 'Wawan', usia: 18, profesi: 'tentara' },
  { nama: 'Yani', usia: 20, profesi: 'buruh' },
  { nama: 'Tomas', usia: 16, profesi: 'pelajar' }
]

class Array
  def select(&block)
    raise "Error, don't use this"
  end

  def filter(&block)
    raise "Error, don't use this"
  end

  def length
    raise "Error, don't use this"
  end

  def size
    raise "Error, don't use this"
  end
end

# Modifikasi method ini, sehingga menghasilkan jumlah peserta pemilu yang sesuai.
# Input: array dari warga
# Output: jumlah warga dengan usia lebih atau sama dengan 1t7 tahun dan bukan seorang tentara
def jumlah_warga_dengan_hak_pilih(warga)
  warga.select { |individu| individu[:usia] >= 17 && individu[:profesi] != 'tentara' }.length
end

# Hasil seharusnya 3, yaitu Ujang, Beni dan Yani
puts "Jumlah Peserta pemilu: #{jumlah_warga_dengan_hak_pilih(semua_warga)} orang"

