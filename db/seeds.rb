# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

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

(1..100).each do |i|
  Purchase.create(:price => "#{i}", :where => "#{i} Main Street", :when => "", :rating => "#{i}", :category => "",
  :comment => "i spend money", :image_url => "")
end
