class Tournament < ActiveRecord::Base
  belongs_to :commissioner, :class_name=>"User"
  has_many :tournament_players
  has_many :players, through: :players, :class_name=>"User"
end
