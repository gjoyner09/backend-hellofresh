class Menu < ApplicationRecord
    has_many :recipe_week_join_tables
    has_many :recipes, :through => :recipe_week_join_tables
end
