=begin
public class ClaseConvertir { 
 
public String convertirRomano(int num) { 
String romano = ""; 
int[] numeros = {1000, 500, 100, 50, 10, 5, 1}; 
String[] letras = {"M", "D", "C", "L", "X", "V", "I"}; 
for (int i = 0; num >= 1; i++) { 
  int x = num / numeros[i]; 
  if (x < 4) { 
    for (int j = 0; j < x; j++) { 
    romano += letras[i]; 
  } 
} else { 
    for (int j = 0; j < 5 - x; j++) { 
    romano += letras[i]; 
    } 
    romano += letras[i - 1]; 
    } 
    num -= x * numeros[i]; 
    } 
return romano; 
} 
}

=end

def to_roman(num)

  valor_final = []
  valor_int = [1000, 500, 100, 50, 10, 5, 1]
  valor_romano = ["M", "D", "C", "L", "X", "V", "I"]

  for i in 0..valor_int.count
    var = num / valor_int[i] 
    if var < 4 && var >= 1
     # p num
      #p var
      p valor_int[i]
      for j in 0..var-1
        valor_final << valor_romano[i]
        p valor_final
      end
    else
      new_val = 5-var
      for j in 0..new_val 
        valor_final += valor_romano[i]
      end
      p valor_final
 #    valor_final += valor_romano[i - 1]
    end
 #num -= var * valor_romano[i]
  end
  valor_final

end


p to_roman(6)
