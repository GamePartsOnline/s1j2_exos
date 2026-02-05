def day_trader(prices)
  meilleur_profit = 0
  meilleur_achat = 0
  meilleure_vente = 1
  
  (0...prices.length).each do |jour_achat|
    ((jour_achat + 1)...prices.length).each do |jour_vente|
      profit = prices[jour_vente] - prices[jour_achat]
      
      if profit > meilleur_profit
        meilleur_profit = profit
        meilleur_achat = jour_achat
        meilleure_vente = jour_vente
      end
    end
  end
  
  [meilleur_achat, meilleure_vente]
end