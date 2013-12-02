json.array!(@green_cards) do |green_card|
  json.extract! green_card, 
  json.url green_card_url(green_card, format: :json)
end
