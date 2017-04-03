DOMAINS
	kuliah=kuliah(symbol,symbol,symbol,integer)
	intelejensi=ai(symbol,string,integer,symbol)
	pde=pde(symbol,string,integer,symbol)
	tambahan=tambahan(symbol,string,integer,symbol)
PREDICATES
	nondeterm jenis_kuliah(kuliah)
	nondeterm intelejensi_buatan(intelejensi)
	nondeterm pde(pde)
	nondeterm mk_tambahan(tambahan)
CLAUSES
	jenis_kuliah(kuliah("intelejensi Buatan","Abdul Kadir","Manajemen Informatika",1)).
	jenis_kuliah(kuliah("PDE","indra Yatini","Teknik Informatika",2)).
	jenis_kuliah(kuliah("Teknik Antar Muka","Sigit Anggoro","Teknik Komputer",3)).
	
	intelejensi_buatan(ai("Sugeng Riyadi",pria,2002001,"Jl. Sudirman No.2, Pontianak, Kalimantan Barat")).
	intelejensi_buatan(ai("Yilia Sugondo",wanita,2002002,"Jl. A. Yani No.10, Klaten, Jawa Tengah")).
	intelejensi_buatan(ai("Budiman Sejati",pria,2002003,"Jl. Slamet Riyadi No.45, Solo, Jawa Tengah")).
	
	pde(pde("Laksamana Sukardi",pria,2002004,"Jl. MT Haryono No.10,Palembang, Sumatra Selatan")).
	pde(pde("Rini Suwandi",wanita,2002005,"Jl. Letjen Suprapto No.12,Surabaya, Jawa Timur")).
	pde(pde("Kwik Kian Gie",pria,2002006,"Jl. WR Supratman No.100,Makassar, Sulawesi Selatan")).
	
	mk_tambahan(tambahan("Riri Reza",pria,2002007,"Jl.WR Mongsidi No.20,Purwokerto, Jawa Tengah")).
	mk_tambahan(tambahan("Rachel Maryam",wanita,2002008,"Jl.Otista No.112,Bandung, Jawa Barat")).
	mk_tambahan(tambahan("Garin Nugroho",pria,2002009,"Jl.Tanjung Pura No.101,Jayapura, Papua")).
GOAL
	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,1)),
   	intelejensi_buatan(ai(Nama,_,No_Mhs,_));
   	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,2)),
  	pde(pde(Nama,_,No_Mhs,_));
  	jenis_kuliah(kuliah(Mata_kuliah,Nama_dosen,_,3)),
   	mk_tambahan(tambahan(Nama,_,No_Mhs,_)).
