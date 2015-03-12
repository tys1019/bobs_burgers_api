class OrderSerializer < ActiveModel::Serializer
  attributes :id, :burgers, :total_price, :created_at

  def created_at
    object.created_at.strftime('%d-%m-%Y')
  end

end
