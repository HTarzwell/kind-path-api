class ItemSerializer < ActiveModel::Serializer
  attributes :id, :date, :description, :energy_needed, :is_completed, :is_crucial
end
