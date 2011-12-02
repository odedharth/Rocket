class CityArticle < ActiveRecord::Base

belongs_to :article
belongs_to :city

#validates_presence_of :city_id

end
