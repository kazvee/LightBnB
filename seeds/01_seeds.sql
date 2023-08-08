INSERT INTO users
(name, email, password) VALUES
('Melody Horn', 'melody@geemail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Celeste Sky', 'skyyy@coldmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Twinkle Solar', 'solara@inlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'); 

INSERT INTO properties
(owner_id, title, description, thumbnail_photo_url,
cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms,
country, street, city, province, post_code, active) VALUES
(1, 'Cozy Comfort', 'Home away from home', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350',
'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930.61, 6, 4, 8,
'Canada', '248 Boulevard des Avenues', 'Saint-Louis-du-Ha! Ha!', 'Quebec', 28142, true),
(1, 'Sunny Shore', 'Dance your cares away', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350',
'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 85234, 6, 6, 7,
'Canada', '123 Rainbow Road', 'Banoffee', 'Alberta', 83680, true),
(2, 'Forest Hike', 'Enjoy the fresh air', 'https://images.pexels.com/photos/2079434/pexels-photo-2079434.jpeg?auto=compress&cs=tinysrgb&h=350',
'https://images.pexels.com/photos/2079434/pexels-photo-2079434.jpeg', 46058, 0, 5, 6,
'Canada', '1818 Highway 2', 'Plamondeureux', 'Newfoundland And Labrador', 44583, true);

INSERT INTO reservations
(start_date, end_date, property_id, guest_id) VALUES
('2018-09-11', '2018-09-26', 2, 3),
('2019-01-04', '2019-02-01', 2, 2),
('2023-10-01', '2023-10-14', 1, 3);

INSERT INTO property_reviews
(guest_id, property_id, reservation_id, rating, message) VALUES
(3, 2, 1, 3, 'Comfy beds'),
(2, 2, 2, 4, 'Quiet location'),
(3, 1, 3, 4, 'Lovely fireplace');