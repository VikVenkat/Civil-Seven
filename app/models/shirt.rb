class Shirt < ActiveRecord::Base

  has_many :styles
  belongs_to :order
  

end
