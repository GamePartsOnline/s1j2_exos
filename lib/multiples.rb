def is_multiple_of_3_or_5?(number)
  number % 3 == 0 || number % 5 == 0
end

def sum_of_3_or_5_multiples(final_number)
  somme = 0
  
  (0...final_number).each do |current_number|
    if is_multiple_of_3_or_5?(current_number)
      somme += current_number  # ← Ajoute current_number à somme
    end
  end
  
  somme  # Retourne somme
end