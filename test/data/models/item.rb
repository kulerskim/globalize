class Item < ActiveRecord::Base
  translates :content, force_touch: true
end
