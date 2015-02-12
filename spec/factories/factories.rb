FactoryGirl.define do
  
  factory :venue, class: Venue do
    name 'Gallery'
    address '1000 e 1000 s'
    city 'Salt Lake City'
    state 'UT'
    user_id 2999
  end
  
  factory :venue12, class: Venue do
    id 42
    name 'Coffee House'
    address '700 e 600 s'
    city 'Salt Lake City'
    state 'UT'
  end

  factory :invalid_venue, parent: :venue do |f|
    f.name nil
  end

  factory :event do
    venue_id 42
    id 25
    name 'ArtEvent'
    address '9350 South 150 East #575'
    city 'Sandy'
    state 'UT'
  end

  factory :invalid_event, parent: :event do |f|
    f.name nil
  end

  factory :work do
    title 'Mona Lisa'
    image_file_name 'images/image.jpg'
    artist_id 999
    id 1099
  end

  factory :invalid_work, parent: :work do
    title nil
    image_file_name nil
    artist_id nil
  end

  factory :artist999, class: Artist do
    id 999
    user_id 2999
  end

  factory :user222, class: User do
    email 'email222@gmail.com'
    username 'Total Fakerson'
    password 'password'
    id 3999
    is_venue false
    is_artist false
  end

  factory :user444, class: User do
    email 'email444@yahoo.com'
    username 'Place Fakerson'
    password 'password'
    id 444
    is_venue true
    is_artist false
  end
  
  factory :venue604, class: Venue do
    id 666
    user_id 444
  end

  factory :user333, class: User do
    email 'email333@aol.com'
    username 'Fake Fakerson'
    password 'password'
    id 2999
    is_venue false
    is_artist true
  end
  factory :artist503, class: Artist do
    id 500
    user_id 2999
  end
end