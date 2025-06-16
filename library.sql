CREATE TABLE kategori (
    id_kategori VARCHAR(255) PRIMARY KEY,
    nama_kategori VARCHAR(80)
);

CREATE TABLE petugas (
    id_petugas VARCHAR(255) PRIMARY KEY,
    nama_petugas VARCHAR(80)
);

CREATE TABLE rak_buku (
    id_rak_buku VARCHAR(255) PRIMARY KEY,
    nomor_rak INTEGER,
    kapasitas INTEGER
);

CREATE TABLE buku (
    id_buku VARCHAR(255) PRIMARY KEY,
    judul_buku VARCHAR(255),
    isbn VARCHAR(20),
    penulis VARCHAR(80),
    tanggal_rilis DATE,
    penerbit VARCHAR(80),
    cetakan INTEGER,
    sinopsis VARCHAR(255),
    halaman INTEGER,
    id_kategori VARCHAR(255) REFERENCES kategori (id_kategori),
    id_petugas VARCHAR(255) REFERENCES petugas (id_petugas),
    id_rak_buku VARCHAR(255) REFERENCES rak_buku (id_rak_buku)
);

CREATE TABLE peminjam (
    id_peminjam VARCHAR(255) PRIMARY KEY,
    nama_peminjam VARCHAR(80),
    alamat VARCHAR(255),
    nomor_hp VARCHAR(15)
);

CREATE TABLE transaksi (
    id_transaksi VARCHAR(255) PRIMARY KEY,
    tanggal_transaksi DATE,
    tanggal_batas_pengembalian DATE,
    status_pengembalian BOOLEAN,
    id_buku VARCHAR(255) REFERENCES buku (id_buku),
    id_peminjam VARCHAR(255) REFERENCES peminjam (id_peminjam)
);

ALTER TABLE buku ALTER COLUMN sinopsis SET DATA TYPE TEXT;

INSERT INTO
    kategori (id_kategori, nama_kategori)
VALUES ('KTGR1', 'Fiksi'),
    ('KTGR2', 'Komik'),
    ('KTGR3', 'Ensiklopedi'),
    ('KTGR4', 'Referensi'),
    ('KTGR5', 'Sejarah'),
    ('KTGR6', 'Biografi'),
    ('KTGR7', 'Lifestyle'),
    ('KTGR8', 'Sains'),
    ('KTGR9', 'Pendidikan'),
    ('KTGR10', 'Filsafat');

INSERT INTO
    petugas (id_petugas, nama_petugas)
VALUES ('PTGS1', 'Jayadi'),
    ('PTGS2', 'Haryanto'),
    ('PTGS3', 'Yohanes'),
    ('PTGS4', 'Bruno'),
    ('PTGS5', 'Joko'),
    ('PTGS6', 'Rodrigo'),
    ('PTGS7', 'Svelte'),
    ('PTGS8', 'Heru'),
    ('PTGS9', 'Robert'),
    ('PTGS10', 'Sumaryanto');

INSERT INTO
    rak_buku (
        id_rak_buku,
        nomor_rak,
        kapasitas
    )
VALUES ('RAK1', 1, 50),
    ('RAK2', 2, 50),
    ('RAK3', 3, 80),
    ('RAK4', 4, 80),
    ('RAK5', 5, 100),
    ('RAK6', 6, 100),
    ('RAK7', 7, 100),
    ('RAK8', 8, 100),
    ('RAK9', 9, 100),
    ('RAK10', 10, 100);

INSERT INTO
    peminjam (
        id_peminjam,
        nama_peminjam,
        alamat,
        nomor_hp
    )
VALUES (
        'PMJM1',
        'Tony',
        'Depok',
        '083131313131'
    ),
    (
        'PMJM2',
        'Carlos',
        'Depok',
        '083535353535'
    ),
    (
        'PMJM3',
        'Maman',
        'Bekasi',
        '082121212121'
    ),
    (
        'PMJM4',
        'Anderson',
        'London',
        '083434343434'
    ),
    (
        'PMJM5',
        'Putri',
        'Bogor',
        '083737373737'
    ),
    (
        'PMJM6',
        'Antonius',
        'Bandung',
        '082727272727'
    ),
    (
        'PMJM7',
        'Yono',
        'Depok',
        '089191919191'
    ),
    (
        'PMJM8',
        'Bagaskara',
        'Jakarta',
        '080808080808'
    ),
    (
        'PMJM9',
        'Alexander',
        'Cirebon',
        '085208520852'
    ),
    (
        'PMJM10',
        'Vladimir',
        'Moskow',
        '088108810881'
    );

INSERT INTO
    buku (
        id_buku,
        judul_buku,
        isbn,
        penulis,
        tanggal_rilis,
        penerbit,
        cetakan,
        sinopsis,
        halaman,
        id_kategori,
        id_petugas,
        id_rak_buku
    )
VALUES (
        'BUKU1',
        'Cantik Itu Luka',
        '9786020312583',
        'Eka Kurniawan',
        'January 30, 2015',
        'Gramedia Pustaka Utama',
        1,
        'Hidup di era kolonialisme bagi para wanita dianggap sudah setara seperti hidup di neraka. Terutama bagi para wanita berparas cantik yang menjadi incaran tentara penjajah untuk melampiaskan hasrat mereka. Itu lah takdir miris yang dilalui Dewi Ayu, demi menyelamatkan hidupnya sendiri Dewi harus menerima paksaan menjadi pelacur bagi tentara Belanda dan Jepang selama masa kedudukan mereka di Indonesia.',
        489,
        'KTGR1',
        'PTGS1',
        'RAK1'
    ),
    (
        'BUKU2',
        'Laut Bercerita',
        '9786024246945',
        'Leila S. Chudori',
        'December 21, 2017 ',
        'Kepustakaan Populer Gramedia',
        1,
        'Laut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.',
        400,
        'KTGR1',
        'PTGS2',
        'RAK1'
    ),
    (
        'BUKU3',
        'Bumi Manusia',
        '9789799731234',
        'Pramoedya Ananta Toer',
        'July 10, 2015',
        'Lentera Dipantara',
        1,
        'Roman bagian pertama; Bumi Manusia, sebagai periode penyemaian dan kegelisahan dimana Minke sebagai aktor sekaligus kreator adalah manusia berdarah priyayi yang semampu mungkin keluar dari kepompong kejawaannya menuju manusia yang bebas dan merdeka, di sudut lain membelah jiwa ke-Eropa-an yang menjadi simbol dan kiblat dari ketinggian pengetahuan dan peradaban.',
        538,
        'KTGR1',
        'PTGS3',
        'RAK1'
    ),
    (
        'BUKU4',
        'Saman',
        '9786024243999',
        'Ayu Utami',
        'February 28, 2023',
        'Kepustakaan Populer Gramedia',
        1,
        'Pembicaraan tentang seks, cinta, politik, dan agama serta perasaan-perasaan yg saling bertaut antar para tokoh digambarkan tanpa rigiditas, tanpa beban, bebas sebebas-bebas bagai seorang Ursula Brangwen - tokoh utama penulis D.H. Lawrence - yg menari diatas bukit sembari bertelanjang tanpa persoalan. tapi sikap para tokoh yg mempertanyakan Tuhan, persenggamaan, hubungan antar manusia itu, juga sangat diperhitungkan dan sangat menarik lagi, dengan begitu banyak fakta sehari-hari dan berbagai perbenturan pemikiran, roman ini tak jatuh kepada sebuah karya yg sekadar cerebral dan intelektual belaka, tapi ia berhasil menyentuh emosi. Superb, splendid .Novel ini dapat dinikmati dan berguna sejati ha bagi pembaca yg dewasa. Bahkan amat dewasa. Dan jujur, khusus mengenai dimensi-dimensi politik, antropologi sosial, dan teristimewa lagi agama dan iman.',
        216,
        'KTGR1',
        'PTGS4',
        'RAK1'
    ),
    (
        'BUKU5',
        'Ronggeng Dukuh Paruk',
        '9789792201963',
        'Ahmad Tohari',
        'November 12, 2009',
        'Gramedia Pustaka Utama',
        1,
        'Semangat Dukuh Paruk kembali menggeliat sejak Srintil dinobatkan menjadi ronggeng baru, menggantikan ronggeng terakhir yang mati dua belas tahun yang lalu. Bagi pedukuhan yang kecil, miskin, terpencil, dan bersahaja itu, ronggeng adalah perlambang. Tanpanya, dukuh itu merasa kehilangan jati diri. Dengan segera Srintil menjadi tokoh yang amat terkenal dan digandrungi. Cantik dan menggoda. Semua ingin pernah bersama ronggeng itu. Dari kaula biasa hingga pejabat-pejabat desa maupun kabupaten. ',
        406,
        'KTGR1',
        'PTGS5',
        'RAK1'
    ),
    (
        'BUKU6',
        'Laskar Pelangi',
        '9786022916628',
        'Andrea Hirata',
        'February 2, 2020',
        'Bentang Pustaka',
        1,
        'Laskar Pelangi telah menjadi international bestseller, diterjemahkan ke-40 bahasa asing, telah terbit dalam 22 bahasa, dan diedarkan di lebih dari 130 negara. Melalui program beasiswa, Hirata meraih Master of Science (Msc) bidang teori ekonomi dari Sheffield Hallam University, UK. Hirata juga mendapat beasiswa pendidikan sastra di IWP (International Writing Program), University of Iowa, USA. Karya Hirata berbahasa Indonesia: Laskar Pelangi, Sang Pemimpi, Edensor, Maryamah Karpov, Padang Bulan, Cinta di dalam Gelas, Sebelas Patriot, Laskar Pelangi Song Book, Ayah, Sirkus Pohon, dan Guru Aini. Karya dalam bahasa asing The Rainbow Troops, Der Träumer, Dry Season. Sejak Tahun 2010, secara mandiri Hirata mempromosikan minat baca, minat menulis, dan mendirikan museum sastra pertama dan satu-satunya di Indonesia, yaitu Museum Kata Andrea Hirata di Belitung.',
        340,
        'KTGR1',
        'PTGS6',
        'RAK1'
    ),
    (
        'BUKU7',
        'Tenggelamnya Kapal Van Der Wijk',
        '9786022504160',
        'Buya Hamka',
        'December 4, 2017',
        'Gema Insani',
        1,
        'Zainuddin, seorang pemuda yang berdarah Minang dari ayah dan berdarah Bugis dari ibu–dengan hati penuh harapan dan angan akan sambutan gembira dari keluarga ayahnya–dari tanah kelahirannya, Mengkasar, pergi ke Padang Panjang, kampung halaman sang ayah. Namun, apa yang diinginkannya tidak terjadi. Di kampung halaman dan oleh keluarganya dia dianggap orang asing. Ketidaknyamanan hidup di kampung halamannya terobati karena perkenalannya dengan Hayati. Mereka saling jatuh cinta dalam keikhlasan dan kesucian jiwa.',
        268,
        'KTGR1',
        'PTGS7',
        'RAK1'
    ),
    (
        'BUKU8',
        'Entrok',
        '9789792255898',
        'Okky Madasari',
        'April 21, 2010',
        'Gramedia Pustaka Utama',
        1,
        'Marni, perempuan Jawa buta huruf yang masih memuja leluhur. Melalui sesajen dia menemukan dewa-dewanya, memanjatkan harapannya. Tak pernah  dia mengenal Tuhan yang datang dari negeri nun jauh di sana. Dengan  caranya sendiri dia mempertahankan hidup. Menukar keringat dengan  sepeser demi sepeser uang. Adakah yang salah selama dia tidak mencuri,  menipu, atau membunuh?',
        288,
        'KTGR1',
        'PTGS8',
        'RAK1'
    ),
    (
        'BUKU9',
        'Perjalanan Menuju Pulang',
        '9786020654850',
        'Lala Bohang & Lala Nuberg',
        'August 19, 2021',
        'Gramedia Pustaka Utama',
        1,
        'Kisah Perempuan di Antara Ruang & Waktu menghimpun banyak cerita, surat, ilustrasi, serta pertanyaan yang dieksplorasi bersama oleh Lala Bohang, penulis dan seniman visual Indonesia, dan Lara Nuberg, sejarawan dan penulis Indo Belanda, dalam suatu program yang mempertemukan dan membawa mereka dalam penjelajahan batin yang bermakna.',
        172,
        'KTGR1',
        'PTGS9',
        'RAK1'
    ),
    (
        'BUKU10',
        'Kitab Omong Kosong',
        '9786022918004',
        'Seno Gumira Ajidarma',
        'April 23, 2021',
        'Gramedia Pustaka Utama',
        1,
        'Tolong sampaikan agar cerita ini tidak usah dibaca karena membuang waktu, pikiran, dan tenaga. Sungguh hanya suatu omong kosong belaka. Mohon maaf sekali lagi untuk permintaan tolong ini. Maaf, beribu-ribu mohon maaf," Ucap Togog. Buku Kitab Omong Kosong ini ditulis oleh Togog yang merasa minder dan terasingkan dalam sebuah dunia yang sangat memuja Semar. Berkisah tentang malapetaka serbuan bala tentara Sri Rama yang menyapu anak benua dan menghadirkan pemandangan bencana. Inilah kisah Satya dan Maneka, rakyat yang menjadi korban, yang menjelajah dalam pencarian Walmiki penulis Ramayana, sembari berlayar di samudra cerita. Inilah saat kematian Sang Hanoman, wanara agung yang ditakdirkan berumur panjang untuk menjaga kebudayaan. Yuk, simak kelanjutan ceritanya hanya di buku Kitab Omong Kosong ini! Selamat membaca!',
        444,
        'KTGR10',
        'PTGS10',
        'RAK1'
    );

INSERT INTO
    transaksi (
        id_transaksi,
        tanggal_transaksi,
        tanggal_batas_pengembalian,
        status_pengembalian,
        id_buku,
        id_peminjam
    )
VALUES (
        'TRNS1',
        'June 17, 2025',
        'June 24, 2025',
        FALSE,
        'BUKU1',
        'PMJM1'
    ),
    (
        'TRNS2',
        'June 18, 2025',
        'June 25, 2025',
        FALSE,
        'BUKU2',
        'PMJM2'
    ),
    (
        'TRNS3',
        'June 16, 2025',
        'June 23, 2025',
        FALSE,
        'BUKU3',
        'PMJM3'
    ),
    (
        'TRNS4',
        'June 17, 2025',
        'June 24, 2025',
        FALSE,
        'BUKU4',
        'PMJM4'
    ),
    (
        'TRNS5',
        'June 20, 2025',
        'June 27, 2025',
        FALSE,
        'BUKU5',
        'PMJM5'
    ),
    (
        'TRNS6',
        'June 15, 2025',
        'June 22, 2025',
        FALSE,
        'BUKU6',
        'PMJM6'
    ),
    (
        'TRNS7',
        'June 1, 2025',
        'June 8, 2025',
        TRUE,
        'BUKU7',
        'PMJM7'
    ),
    (
        'TRNS8',
        'June 10, 2025',
        'June 17, 2025',
        FALSE,
        'BUKU8',
        'PMJM8'
    ),
    (
        'TRNS9',
        'June 12, 2025',
        'June 18, 2025',
        FALSE,
        'BUKU9',
        'PMJM9'
    ),
    (
        'TRNS10',
        'June 14, 2025',
        'June 21, 2025',
        TRUE,
        'BUKU10',
        'PMJM10'
    );

SELECT * FROM buku;