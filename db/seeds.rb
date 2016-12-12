# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Chewy.strategy(:atomic) do
  # make seeding easy by resetting the primary key sequence
  ActiveRecord::Base.connection.reset_pk_sequence!('sellers')

  Seller.create(name: 'Oakmont Oaks', description: 'Oakmont provides choice oak from Orlando, Louisville, and Seattle')
  Seller.create(name: 'Windy Reserve', description: 'Windy Reserve has provides an array of timber from all across the south east.')
  Seller.create(name: 'Big Hill', description: 'Big Hill provides oak, northern ash, and pine from various regions of Canada.')

  ActiveRecord::Base.connection.reset_pk_sequence!('products')

  Product.create(id: 1, seller_id: 1, name: 'Sturdy Oak', description: 'This oak grain is of the highest quality, leaving it extra sturdy.')
  Product.create(id: 2, seller_id: 1, name: 'Flimsy Oak', description: 'This oak plank is super flimsy and make for easy chairs.')
  Product.create(id: 3, seller_id: 1, name: 'Flexible Oak', description: 'This oak plank is flexible, it can be bent four times before snapping.')
  Product.create(id: 4, seller_id: 2, name: 'Northern Ash Planks', description: 'These northern ash planks are good for building or burning.')
  Product.create(id: 5, seller_id: 2, name: 'Aged Mahogany', description: 'This aged Mahogany makes for an excellent coffee table wood.')
  Product.create(id: 6, seller_id: 2, name: 'Aged Cherry', description: 'No chair or table is made correctly without Cherry.')
  Product.create(id: 7, seller_id: 3, name: 'Walnut Planks', description: 'These walnut planks make for a perfect deck.')
  Product.create(id: 8, seller_id: 3, name: 'Rosewood Pick', description: 'This special pick of Rosewood is perfect for carving.')
  Product.create(id: 9, seller_id: 3, name: 'Waterproof Teak', description: 'These teak planks allow for waterproof and sun proof outdoor wood.')

  ActiveRecord::Base.connection.reset_pk_sequence!('reviewers')

  Reviewer.create(id: 1, name: 'George Washington', bio: 'George is the co-founder of the United States')
  Reviewer.create(id: 2, name: 'Abe Lincoln', bio: 'Abe never told a lie.')
  Reviewer.create(id: 3, name: 'Thomas Jefferson', bio: 'TJ was a furniture maker.')

  ActiveRecord::Base.connection.reset_pk_sequence!('reviews')

  Review.create(id: 1, product_id: 1, reviewer_id: 1, body: 'The sturdy oak is a solid building material that will last.')
  Review.create(id: 2, product_id: 2, reviewer_id: 1, body: 'The flimsy oak is a super flimsy and light material.')
  Review.create(id: 3, product_id: 3, reviewer_id: 1, body: 'The flexible oak, not to be confused with flimsy, is flexible.')
  Review.create(id: 4, product_id: 4, reviewer_id: 2, body: 'Northern ash planks from Windy Reserve are awesome!')
  Review.create(id: 5, product_id: 5, reviewer_id: 2, body: 'The aged mahogany is high grain old stuff.')
  Review.create(id: 6, product_id: 6, reviewer_id: 2, body: 'The cherry we bought from Windy Reserve was awesome!')
  Review.create(id: 7, product_id: 7, reviewer_id: 3, body: 'Have you ever had walnut this solid? We built our deck out of it.')
  Review.create(id: 8, product_id: 8, reviewer_id: 3, body: 'We found these rosewoods to be really light and tough.')
end
