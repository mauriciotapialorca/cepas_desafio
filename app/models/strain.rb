class Strain < ApplicationRecord
    has_many :wine_strains
    has_many :wine

end
