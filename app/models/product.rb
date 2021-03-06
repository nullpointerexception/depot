class Product < ActiveRecord::Base
    default_scope :order => 'title'
    
    validates_presence_of :title, :description, :image_url, :message => 'must be filled in'
    validates :title, :length => { :minimum => 10 }
    validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
    validates :title, :uniqueness => true
    validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)$}i,
      :message => 'must be a URL for GIF, JPG or PNG image'
    }
end
