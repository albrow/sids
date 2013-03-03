class Bracket < ActiveRecord::Base
  attr_accessible :name, :user_id
  belongs_to :user
  has_many :predictions, :dependent => :destroy
end
