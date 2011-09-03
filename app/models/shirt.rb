class Shirt < ActiveRecord::Base

  belongs_to :order
  has_one :style

end
