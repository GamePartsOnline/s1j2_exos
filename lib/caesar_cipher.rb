def cipher_letter(lettre, cle)
  # Si ce n'est PAS une lettre (espace, ponctuation), on la retourne telle quelle
  return lettre unless lettre.match?(/[A-Za-z]/)
  
  # Définir la base selon si c'est majuscule ou minuscule
  base = lettre == lettre.upcase ? 'A'.ord : 'a'.ord
  
  # Calculer le nouveau code ASCII avec rebouclage
  ((lettre.ord - base + cle) % 26 + base).chr
end

def caesar_cipher(texte, cle)
  resultat = ""
  
  texte.each_char do |caractere|
    resultat += cipher_letter(caractere, cle)
  end
  
  resultat
end