def word_counter(texte, dictionnaire)
  resultat = {}
  texte_minuscule = texte.downcase
  
  dictionnaire.each do |mot|
    compte = texte_minuscule.scan(mot).count
    
    if compte > 0
      resultat[mot] = compte
    end
  end
  
  resultat
end