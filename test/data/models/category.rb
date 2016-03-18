class Category < ActiveRecord::Base
  translates :title, keep: true
  validates_presence_of :title
end
