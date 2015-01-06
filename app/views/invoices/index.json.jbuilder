json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :serial, :date, :total, :user_id, :shop_id
  json.url invoice_url(invoice, format: :json)
end
