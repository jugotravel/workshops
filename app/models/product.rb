class Product < ActiveRecord::Base
  #attr_accessible :price
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates_presence_of :price,:description,:title#,:average_rating  
  validates_numericality_of :price
  validates_format_of :price,with: /\A\d+(?:\.\d{0,2})?\z/ 
  def average_rating 
    @average_rating = 2.5
  end
      
end
