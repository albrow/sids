class Prediction < ActiveRecord::Base
  attr_accessible :bracket_id, :round_id, :winner_id
  belongs_to :bracket
  belongs_to :winner, :foreign_key => "winner_id", :class_name => "Team"
end
