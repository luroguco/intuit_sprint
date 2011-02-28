class Purchase < ActiveRecord::Base
end

# == Schema Information
#
# Table name: purchases
#
#  id         :integer         not null, primary key
#  price      :float
#  where      :string(255)
#  when       :datetime
#  rating     :integer
#  category   :string(255)
#  comment    :text
#  image_url  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

