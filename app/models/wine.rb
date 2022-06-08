class Wine < ApplicationRecord
    has_many :strains
    through :wine_strains

end
