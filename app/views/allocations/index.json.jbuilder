json.array!(@allocations) do |allocation|
  json.extract! allocation, :id, :assigned, :user_id, :show_id, :row_id, :quantity, :start_seat, :end_seat, :price, :price_category_id
  json.url allocation_url(allocation, format: :json)
end
