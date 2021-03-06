class ItemSerializer
  include FastJsonapi::ObjectSerializer

  belongs_to :merchant
  attributes :id, :name, :description, :merchant_id

  attribute :unit_price do |item|
    item.unit_price / 100
  end
end