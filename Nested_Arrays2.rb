
=begin

def tablero_gato 

  for fila in 0..4
    for columna in 0..4
      if (fila == 0 || fila == 2 || fila == 4) && (columna == 1 || columna == 3)
        print "  |  " 
      elsif fila == 1 || fila == 3
        print "-----" 
      elsif (fila == 0 || fila == 2 || fila == 4)&& (columna != 1 || columna != 3)
        print "     " 
      end

    end
    puts ""
  end

end


tablero_gato

puts ""

def tablero_gato2

array = ["---", " | ", "   "] 

  (0..4).each do  |fila|
    (0..4).each do  |columna|
      if (fila == 0 || fila == 2 || fila == 4) && (columna == 1 || columna == 3)
        print array[1]
      elsif fila == 1 || fila == 3
        print array[0]
      elsif (fila == 0 || fila == 2 || fila == 4)&& (columna != 1 || columna != 3)
        print array[2]
      end

    end
    puts ""
  end

end

tablero_gato2

=end


def tablero_gato_lleno

count_X = 0
count_O = 0

  for fila in 0..4
    for columna in 0..4
      if (fila == 0 || fila == 2 || fila == 4) && (columna == 1 || columna == 3)
        print "  |  " 
      elsif fila == 1 || fila == 3
        print "-----" 
      elsif (fila == 0 || fila == 2 || fila == 4)&& (columna != 1 || columna != 3)
          valor_rand = rand(2)

            if valor_rand == 0
              count_X += 1
              valor_rand = "X"
            else
              count_O += 1
              valor_rand = "O"
            end

            if count_O >= 5
              valor_rand = "X"
            elsif count_X >= 5
              valor_rand = "O"
            else
              valor_rand
            end

          print "  #{valor_rand}  " 
      end

    end
    puts ""
  end


end


tablero_gato_lleno



table = 
  [ 
    { Nombre: "Rodrigo García", Edad: 13, Genero: "Masculino", Grupo: "Primero",   Calificaciones: [9, 9, 7, 6, 8] } ,
    { Nombre: "Fernanda Gonzalez", Edad: 12, Genero: "Femenino", Grupo: "Tercero", Calificaciones: [6, 9, 8, 6, 8] } ,
    { Nombre: "Luis Perez", Edad: 13, Genero: "Masculino", Grupo: "Primero",       Calificaciones: [8, 7, 7, 9, 8] } ,
    { Nombre: "Ana Espinosa", Edad: 14, Genero: "Femenino", Grupo: "Segundo",      Calificaciones: [9, 9, 6, 8, 8] } ,
    { Nombre: "Pablo Moran", Edad: 11, Genero: "Masculino", Grupo: "Segundo",      Calificaciones: [7, 8, 9, 9, 8] } ]



p table[0][:Nombre] == "Rodrigo García"
p table[1][:Edad] == 12
p table[2][:Genero] == "Masculino"
p table[3][:Grupo] == "Segundo"
p table[4][:Calificaciones] == [7, 8, 9, 9, 8]



