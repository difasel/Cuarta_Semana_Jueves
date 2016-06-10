


#  tablero =
# [ ["torre", "caballo", "alfil", "rey ", "reina", "alfil", "caballo", "torre" ],
#   ["peon", "peon", "peon", "peon", "peon", "peon", "peon", "peon" ],
#   ["       ", "         ", "       ", "      ", "       ", "       ", "         ", "       " ],
#   ["       ", "         ", "       ", "      ", "       ", "       ", "         ", "       " ],
#   ["       ", "         ", "       ", "      ", "       ", "       ", "         ", "       " ],
#   ["       ", "         ", "       ", "      ", "       ", "       ", "         ", "       " ],
#   ["torre", "caballo", "alfil", "rey ", "reina", "alfil", "caballo", "torre" ],
#   ["peon ", "peon", "peon", "peon", "peon ", "peon ", "peon", "peon" ] ]

#p tablero[0] 
#p tablero[1] 
#p tablero[2] 
#p tablero[3] 
#p tablero[4] 
#p tablero[5] 
#p tablero[6]
#p tablero[7]  

def tablero_ajedrez

   tablero_new =
  [ ["T", "C", "A", "K", "Q", "A", "C", "T" ],
    ["P"] ]

  for fila in 0..16 
    for columna in  0..7
      if fila == 1 
        print "|\t" + tablero_new[fila-1][columna]  + "N\t|"
      elsif fila % 2 == 0
        print "----------------"
      elsif fila == 3 
        print "|\t" + tablero_new[1][0] + "N\t|"
      elsif fila == 13
        print "|\t" + tablero_new[1][0] + "B\t|"
      elsif fila == 15 
       print  "|\t" + tablero_new[fila-15][columna] + "B\t|"
      else
        print "|\t\t|"
      end
    end
    puts ""
  end

end

tablero_ajedrez



table = 
  [ ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
    ["Rodrigo García", 13, "Masculino", "Primero",   [9, 9, 7, 6, 8] ] ,
    ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8] ] ,
    ["Luis Perez", 13, "Masculino", "Primero",       [8, 7, 7, 9, 8] ] ,
    ["Ana Espinosa", 14, "Femenino", "Segundo",      [9, 9, 6, 8, 8] ] ,
    ["Pablo Moran", 11, "Masculino", "Segundo",      [7, 8, 9, 9, 8] ] ]

p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6

