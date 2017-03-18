PREDICATES                                                                          
nondeterm intelejensi(symbol,symbol)
nondeterm pde(symbol,symbol)
nondeterm so(symbol,symbol)
lulus(symbol)
tidaklulus(symbol)

CLAUSES
lulus(a).
lulus(b).
lulus(c).
tidaklulus(d).
tidaklulus(e).

intelejensi(irfan,lulus).
intelejensi(komeng,tidaklulus).
intelejensi(dati,lulus).
intelejensi(fatima,lulus).
intelejensi(maspion,lulus).

pde(ricky,tidaklulus).
pde(embang,lulus).
pde(salmin,tidaklulus).                                                        
pde(vina,lulus).
pde(sondang,lulus).

so(pamuji,tidaklulus).
so(luki,tidaklulus).
so(sadek,lulus).
so(yusida,lulus).
so(eka,lulus).

GOAL
 intelejensi(Orang,tidaklulus);
pde(Orang,tidaklulus);
so(Orang,tidaklulus).

