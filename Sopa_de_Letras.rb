class Board
# You should put here the given boards templates

 @@boards_templates =  "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
  def initialize
     complete_board!
  end

  def to_s
    
  array_cadena = @@boards_templates.split('')
  count = 0

    for fila in 0..14
      for columna in 0..8
        if (fila == 0 || fila == 2 || fila == 4 || fila == 6 || fila == 8 || fila == 10 || fila == 12 || fila == 14) && (columna == 1 || columna == 3|| columna == 5 || columna == 7)
          print "  |  " 
        elsif fila == 1 || fila == 3 || fila == 5 || fila == 7 || fila == 9  || fila == 11 || fila == 13 || fila == 15
          print "-----" 
        elsif (fila == 0 || fila == 2 || fila == 4 || fila == 6 || fila == 8 || fila == 10 || fila == 12 || fila == 14) && (columna != 1 || columna != 3|| columna != 5 || columna != 7)
          print "  #{array_cadena[count]}  " 
          count += 1
        end
      end
      puts ""
    end
  end
  

  def include?(word)

    array_horizontal = []
    array_vertical = []
    array_diagonal_izq = []
    array_diagonal_der = []
    array_matrix = []
    final_array = []
    @@boards_templates.split('').each_slice(5) {|v| array_matrix << v}

    array_sopa = @@boards_templates.split('')
    string_aux = ""
    count = 0

    @@boards_templates.split('').each_slice(5) do |horizontal| 
      array_horizontal << horizontal.join
      array_horizontal << horizontal.reverse.join
    end
    # p array_sopa

    for num_vertical in 1..5
      for num_indx in 1..8
        string_aux << array_sopa[count]
        count += 5
      end

      array_vertical << string_aux
      array_vertical << string_aux.reverse
      string_aux = ""
      count  = num_vertical
      
    end

    padding = 0
    padding = array_matrix.size - 1
    padded_matrix = []

    array_matrix.each do |row|
      inverse_padding = array_matrix.size - padding
      padded_matrix << ([nil] * inverse_padding) + row + ([nil] * padding)
      padding -= 1    
    end


    padded_matrix.transpose.map(&:compact).each do |diag1|
        diag1.each do |val|
         string_aux << val
      end
      array_diagonal_izq << string_aux
      array_diagonal_izq << string_aux.reverse
      string_aux = ""
    end

    
    padding = 0
    padding = array_matrix.size - 1
    padded_matrix = []
    
    array_matrix.each do |row|
        inverse_padding = array_matrix.size - padding
        padded_matrix << ([nil] * padding) + row + ([nil] * inverse_padding)
        padding -= 1    
    end
    

    padded_matrix.transpose.map(&:compact).each do |diag1|
      diag1.each do |val|
        string_aux << val
      end
      array_diagonal_der << string_aux
      array_diagonal_der << string_aux.reverse
      string_aux = ""
    end

    
    
    final_array = array_horizontal + array_vertical + array_diagonal_izq + array_diagonal_der 
      
    #p @@boards_templates.split('').each_slice(5) {|v| p v }
    #p final_array

    contador_validar = 0
    final_array.each do |validar|
      contador_validar += validar.scan(word).count
    end

    if contador_validar >= 1
      "Si existe tu palabra en la sopa de letras"
    else
      "No existe tu palabra en la sopa de letras"
    end

  end

  private

  def complete_board!
  # Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
    for count in  1..@@boards_templates.scan('X').count   
      rand_letter = ('A'..'Z').to_a.sample
      @@boards_templates.sub!(/[X]/, rand_letter)
    end
  end


end


board = Board.new
puts board

p board.include?("POEMA")
p board.include?("ALDO")
p board.include?("CANCION")
p board.include?("RIMA")





