# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

(1..100).each do |i|
  Purchase.create(:price => "#{i}", :where => "#{i} Main Street", :when => "", :rating => "#{i}", :category => "",
  :comment => "i spend money", :image_url => "")
end
