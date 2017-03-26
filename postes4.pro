DOMAINS
nama,jender,pekerjaan,benda,alasan,zat = symbol                                         /*----------------------------LANGKAH LANGKAH JALANNYA PROGRAM VISUAL PROLOG--------------------------------*/
umur=integer										%    % Dari section clauses, melacak data-data orang yang telah %
PREDICATES										%    % dideklarasikan pada section clauses, yang dimana terdapat %
nondeterm orang(nama, umur, jender, pekerjaan)						%    % data yang terlibat dalam kasus pembunuhan. %%%%%%%%%%%%%%%%%%%%%%%
nondeterm selingkuh(nama, nama)							        %    % Jelas fakta yang ada, X merupakan sebagai Pembunuh.Dari argument %
terbunuh_dengan(nama, benda)								%    % pembunuh terdapat beberapa pernyataan persyaratan dan program %%%%
terbunuh(nama)										%    % akan melakukan unifikasi terhadap pernyataan tersebut. %%%%%%%%%
nondeterm pembunuh(nama)								%    % maka program akan mencari fakta orang yang mengetahui pembunuh %%%%%%
motif(alasan)										%    % dalam kasus tersebut. Pernyataan pertama yang di dapat adalah budi. %%
ternodai(nama, zat)									%    % Selanjutnya program mencari pernyataan terbunuh, maka yang ditemukan %%
milik(nama, benda)									%    %%% faktanya adalah siti. Dan kemudian program melakukan pencarian pada %
nondeterm cara_kerja_mirip(benda, benda)						%       % pernyataan dicurigai(X), dari pernyataan tersebut dilakukan proses %%%%%%%%%%
nondeterm kemungkinan_milik(nama, benda)						%       % pencarian menggunakan unifikasi terhadap pernyataan syarat-syarat tersebut. % 
nondeterm dicurigai(nama)								%       % Kemudian program akan mencari senjata yang di pakai untuk membunuh, dengan %%
/* * * Fakta-fakta tentang pembunuhan * * */						%       % melakukan proses di variable terbunuh_dengan. Maka fakta yang diperoleh %%%%%
CLAUSES											%       % ialah terbunuh_dengan(siti, pentungan). %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
											%       % Setelah itu program melakukan proses pencarian fakta benda yang cara kerjanya %
orang(budi,55,m,tukang_kayu).								%       %%% seperti senjata, maka diperoleh cara_kerja_mirip(Benda, Senjata). %%%%%%%%%%%%%%%
orang(aldi,25,m,pemain_sepak_bola).							%          % Kemudian prolog memanggil pernyataan tersebut untuk mengetahui benda yang cara %
orang(aldi,25,m,tukang_jagal).								%          % kerjanya mirip pentungan yang telah di eksekusi pada langkah sebelumnya. %%%%%%%
orang(joni,25,m,pencopet).								%          % maka fakta yang didapat ialah cara_kerja_mirip(kaki_palsu, pentungan). %%%%%%%%%%%%%
selingkuh(ina,joni).									%          % Dan setelah itu program akan melakukan prose fakta dari variable kemungkinan_milik %
selingkuh(ina,budi).									%          % (X, Benda), milik (X, Benda). Dari pernyataan itu maka program mencari fakta bahwa %
selingkuh(siti,joni).								        %          % siapa pemilik kaki palsu,  dan hasilnya milik(budi, kaki_palsu). %%%%%%%%%%%%%%%%%%%
terbunuh_dengan(siti,pentungan).							%          % Jadi kaki_palsu itu miliknya Budi. %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
terbunuh(siti).										%          % Kemudian program menjalankan proses pernyataan dari pembunuh karena masih terdapat %
motif(uang).										%          %%% pernyataan yang belum diproses, yaitu pada variable ternodai(Pembunuh, Zat). %%%%%%%%%%%%
motif(cemburu).										%            % Maka dijalankanlah proses ke dalam pernyataan tersebut, yang menyangkut nama/kata budi, %
motif(dendam).										%            % maka hasilnya didapat ternodai(budi, darah). %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ternodai(budi, darah).									%            % Selanjuntya program melakukan proses terakhir yaitu pada ternodai(Terbunuh, Zat). %%%%%%%%%
ternodai(siti, darah).									%            % Maka akan di dapat hasil ternodai(siti, darah). Dan kesimpulan dari pernyataan-pernyataan %
ternodai(aldi, lumpur).									%            % dan fakta-fakta yang telah ada, maka siti memiliki noda sama persis dengan budi.	%%%%%%%%%%%%%	  %
ternodai(joni, coklat).									%            % Berdasarkan kesamaan fakta-fakta tersebut, goal menampilkan bahwa budilah yang membunuh siti.%
ternodai(ina, coklat).									/*------------------------------------------------------------------------------------------------------------*/
milik(budi,kaki_palsu).
milik(joni,pistol).
/* * * Basis Pengetahuan * * */
cara_kerja_mirip(kaki_palsu, pentungan).
cara_kerja_mirip(balok, pentungan).
cara_kerja_mirip(gunting, pisau).
cara_kerja_mirip(sepatu_bola, pentungan).
kemungkinan_milik(X,sepatu_bola):-
orang(X,_,_,pemain_sepak_bola).
kemungkinan_milik(X,gunting):-
orang(X,_,_,pekerja_salon).
kemungkinan_milik(X,Benda):-
milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai semua orang yang memiliki senjata yang *
* kerjanya mirip dengan senjata penyebab siti terbunuh. *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
terbunuh_dengan(siti,Senjata) ,

cara_kerja_mirip(Benda,Senjata) ,
kemungkinan_milik(X,Benda).
/* * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai laki-laki yang selingkuh dengan siti. *
* * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,m,_),
selingkuh(siti,X).
/* * * * * * * * * * * * * * * * * * * * * * *
* dicurigai perempuan yang selingkuh dengan *
* laki-laki yang juga selingkuh dengan siti *
* * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(cemburu),
orang(X,_,f,_),
selingkuh(X,Lakilaki),
selingkuh(siti,Lakilaki).
/* * * * * * * * * * * * * * * * * * * * * * * * * * *
* dicurigai pencopet yang mempunyai motif uang. *
* * * * * * * * * * * * * * * * * * * * * * * * * * */
dicurigai(X):-
motif(uang),
orang(X,_,_,pencopet).
pembunuh(Pembunuh):-
orang(Pembunuh,_,_,_),
terbunuh(Terbunuh),
Terbunuh <> Pembunuh, /* Bukan bunuh diri */
dicurigai(Pembunuh),
ternodai(Pembunuh,Zat),
ternodai(Terbunuh,Zat).
GOAL
pembunuh(X).