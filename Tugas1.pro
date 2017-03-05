predicates
  suka(symbol,symbol) - nondeterm (o,i), nondeterm (i,i)%disini jelas predikat (suka,baju,celana,dibeli)dan juga ada variabel yaitu
  baju(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)%(symbol,long,integer)
  celana(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)%dan disini ada keyword "nondeterm yang berarti di program ini mempunyai lebih dari satu jawaban
  dibeli(symbol,long,integer,symbol,long) - nondeterm (o,o,o,o,i)

clauses
  suka(andri,baju).
  suka(lina,celana).
  suka(roni,baju).
  
  baju(vogard,50,5,black,225000).%dan disini ada clauses sebagai data data yang di siapkan atau yang sudah ada 
  baju(celcius,50,2,white,235000).%bertujuan menghasilkan jawaban di goal
  baju(threesecond,40,3,black,433000).%dan program ini adalah berupa pertanyaan

  celana(levis,50,7,blue,220000).
  celana(seventyfour,50,8,black,200000).
  celana(defly,40,1,black,555000).

  dibeli(Merk,Diskon,Stok,Warna,Harga):-
	baju(Merk,Diskon,Stok,Warna,Harga);
	celana(Merk,Diskon,Stok,Warna,Harga).

goal
  suka(Orang,baju),
  baju(Merk,Diskon,Stok,Warna,225000).%jika kita lihat dari fakta di atas sudah jelas solusi yang akan kita dapatkan solusi orang yang menyukai baju serta
  				      %baju yg di dalamnya terdapat merk,diskon,stok,warna,dan harga yang sudah di tentukan maka yang terdapat di goal,yang menyukai baju ada 2 solution
  				      %andri dan roni,dan baju yang di belinya merk=vogard diskon=50 stok=5 warna=black harga=225000.
  				      
  
  
