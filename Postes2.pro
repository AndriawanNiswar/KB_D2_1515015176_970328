PREDICATES
     pria(STRING)
     wanita(STRING)
     usia(STRING,INTEGER)
     istri(STRING,STRING)
     nondeterm ibu(STRING,STRING)
     nondeterm kakek(STRING,STRING)
     nondeterm anak(STRING,STRING)
     nondeterm cucu(STRING,STRING)
     nondeterm adik(STRING,STRING)
    
CLAUSES
    
     anak ("Jhone","James").
     anak ("James","Peter").
     anak ("Sue","Ann").
     istri ("Mary","Peter").
     istri ("Ann","James").
     pria ("Jhon").
     pria ("James").
     pria ("Peter").
     wanita ("Mary").
     wanita ("Sue").
     wanita ("Ann").
     usia ("Jhone", 10).
     usia ("Sue", 13).
    
     ibu(X,Y):-anak(Y,Z),istri(X,Z). % Disini X merupakan ibu dari Y dengan begitu Y merupakan anak dari Z, yang dimana X merupakan istri dari Z. 
     kakek(X,Y):-anak(Y,Z),anak(Z,X). % Disini X merupakan kakek dari Y, dengan begitu  Y anak dari Z, yang dimana Z anak dari X.  
     cucu(X,Y):-anak(X,Z),anak(Z,Y). % Disini X merupakan cucu dari Y, dengan begitu  X anak dari Z, yang dimana Z anak dari Y.
     adik(X,Y):-usia(X,10),usia(Y,13). % X merupakan adik dari Y, dengan begitu X berusia 10, yang dimana Y berusia 13.
GOAL
     cucu("Jhone",Siapa).                                                                    % X merupakan cucu dari Y, dengan begitu  X anak dari Z, yang dimana Z anak dari Y.
                                                                                             % Kita bisa lihat fakta diatas bahwa sudah jelas jhone itu  anak dari james,dan james anak dari peter.
                                                                                             % Yang terdapat di goal adalah jhone cucu dari peter.