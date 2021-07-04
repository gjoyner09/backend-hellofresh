class Recipe < ApplicationRecord
    has_many :recipe_week_join_tables
    has_many :menus, :through => :recipe_week_join_tables
end
