json.array!(@red_cards) do |red_card|
  json.extract! red_card, 
  json.url red_card_url(red_card, format: :json)
end
