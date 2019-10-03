class FigureTitle < ActiveRecord::Base
  # add relationships here
  belongs_to :belongs_to
  has_many :figures, through: :figure_titles
end
