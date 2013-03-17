class Team < ActiveRecord::Base
  attr_accessible :image, :name, :id, :seed
  belongs_to :prediction
end
