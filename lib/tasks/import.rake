require 'csv'

task :customers => [:environment] do
  customers = []
  file_path = '././data/customers.csv'
  CSV.foreach(file_path, headers: true) do |row|
    customers << row.to_hash
  end 
  Customer.import(customers)
end


task :merchants => [:environment] do
  merchants = []
  file_path = '././data/merchants.csv'
  CSV.foreach(file_path, headers: true) do |row|
    merchants << row.to_hash
  end 
  Merchant.import(merchants)
end

task :transactions => [:environment] do
  transactions = []
  file_path = '././data/transactions.csv'
  CSV.foreach(file_path, headers: true) do |row|
    transactions << row.to_hash
  end 
  Transaction.import(transactions)
end

task :invoices => [:environment] do
  invoices = []
  file_path = '././data/invoices.csv'
  CSV.foreach(file_path, headers: true) do |row|
    invoices << row.to_hash
  end 
  Invoice.import(invoices)
end

task :items => [:environment] do
  items = []
  file_path = '././data/items.csv'
  CSV.foreach(file_path, headers: true) do |row|
    items << row.to_hash
  end 
  Item.import(items)
end

task :invoice_items => [:environment] do
  invoice_items = []
  file_path = '././data/invoice_items.csv'
  CSV.foreach(file_path, headers: true) do |row|
    invoice_items << row.to_hash
  end 
  InvoiceItem.import(invoice_items)
end