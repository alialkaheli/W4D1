# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Artwork.destroy_all
  ArtworkShare.destroy_all

  u1 = User.create!(username: 'Markov')
  u2 = User.create!(username: 'Gizmo')
  u3 = User.create!(username: 'Bob')
  u4 = User.create!(username: 'Joe')

  a1 = Artwork.create!(title: 'Cats', artist_id: u1.id, image_url: 'cat_pics.com')
  a2 = Artwork.create!(title: 'Dogs', artist_id: u1.id, image_url: 'dog_pics.com')
  a3 = Artwork.create!(title: 'Cars', artist_id: u2.id, image_url: 'car_pics.com')
  a4 = Artwork.create!(title: 'Bikes', artist_id: u2.id, image_url: 'bike_pics.com')
  a5 = Artwork.create!(title: 'Skyscrapers', artist_id: u3.id, image_url: 'skyscraper_pics.com')
  a6 = Artwork.create!(title: 'Plants', artist_id: u4.id, image_url: 'plant_pics.com')
  
  s1 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a1.id)
  s1 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a5.id)
  s1 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a6.id)




end