# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

purchases = Purchase.create([{:price => '49.65', :where => 'Delicious Delights', :when => '20110214 03:15:56', :rating => '5', :category => 'food', :comment => 'That red velvet cupcake was fucking incredible', :image_url => 'http://lifewithcake.com/wp-content/uploads/2009/03/red-velvet-cupcake2-450x299.jpg'}])

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