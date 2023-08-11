# LightBnB

LightBnB is a multi-page Airbnb clone. With a front-end provided by [LightBnB_WebApp](https://github.com/lighthouse-labs/LightBnB_WebApp), server-side JavaScript is used to display website search results, obtained via SQL database queries.

## Final Product

**Logged-in User View:**  

!["Screenshot Logged-in User View"](/docs/logged_in_screenshot.jpg)

**View of Create Listing page:**  

!["Screenshot of Create Listing"](/docs/create_listing_screenshot.jpg)

**View of Search page:**  

!["Screenshot of Search Options"](/docs/search_options_screenshot.jpg)

**View of Sign Up page:**  

!["Screenshot of Search Options"](/docs/sign_up_screenshot.jpg)

**View of Log In page:**  

!["Screenshot of Search Options"](/docs/log_in_screenshot.jpg)

## Purpose

This project was created by [me](https://github.com/kazvee) as part of my learnings at [Lighthouse Labs](https://www.lighthouselabs.ca/en/web-development-flex-program).

## How to Use This Site

Whether you’re a property owner eager to welcome new guests, an adventurer seeking your next home away from home, or a mix of both — we are a property booking site that runs right in your browser!

>**Latest News**:  
> 🏆  Proud self-nominee for this year's *<u>Best Property Booking Site</u>* award, presented by the prestigious **LocalHost:3000 Magazine**! 😃

### New or Returning Users  

Use the **Sign Up** and **Log In** menu options to create a new owner listing, or view your existing active listings. If you’ve made any guest bookings, you can also view them from here!

### For our Hosts  

Use the **Create Listing** menu option to put your property's best square-footage forward with our intuitive marketing features:
* Create a unique listing title to captivate and inspire potential guests
* Provide a short description of your property and nearby visitor attractions
* Highlight your listing with **two** exceptional photos
* Include all essential guest information: *Number of bedrooms*, *Number of bathrooms*, *Number of parking spots*, and *Cost per night*

Click on the **My Listings** menu option to view your existing listings.   

### For our Guests

Click on the **My Reservations** menu option to view full details about your confirmed reservations. Or use our search feature to plan your next getaway!

### Just Browsing For Now?

No need to login to have a look around! Use our speedy **Search** feature to get inspiration for your next retreat!  
To narrow down your results, use our optional filters: *City*, *Minimum Price per Night*, *Maximum Price per Night*, and *Minimum Rating*.  
Once you've found the ideal local host on **your** localhost, make sure to **Register** or **Login** to book your reservation!

## Stretch / Extra Features

Recent database improvements will enable our front-end to be further developed to offer enhanced user experience
* Different Rates for Different Dates:
  * Hosts can set different pricing rates for certain date ranges, allowing flexibility for seasonal travel cost fluctuations
* Guest Reviews, written by confirmed Hosts: 
  * Property owners can add reviews about their previous guests, offering increased transparency and accountability

## Planned Improvements

* Prices currently **include cents** when listing or booking properties, so typing in `10000` will equal `$100.00`. Please pay close attention when entering prices.  
* After property owners use Create Listing, the newly-created entry will not immediately display under their My Listings, as this view currently only shows properties with existing guest review ratings.
* Did our frontend developer use this site to book an extended vacation? 🤔 We'll be polishing up the look and feel of our online booking platform early next year!

## Dependencies

- [Express](https://expressjs.com/)
- [Node.js](https://nodejs.org/)
- [SASS](https://www.npmjs.com/package/sass)
- [bcrypt](https://www.npmjs.com/package/bcrypt)
- [cookie-session](https://www.npmjs.com/package/cookie-session)
- [dotenv](https://www.npmjs.com/package/dotenv)
- [nodemon](https://www.npmjs.com/package/nodemon)
- [node-postgres](https://node-postgres.com)
        
## Getting Started

### Set up Project Files

1. Fork & Clone this repository to your local device.
2. From within the project root folder, navigate into the 'LightBnB_WebApp' folder with the `cd LightBnB_WebApp` command.
3. Install all dependencies using the `npm install` (or `npm i`) command.

### Set up Database

4. In a terminal window, connect to your PostgreSQL environment using `psql` and your login credentials.
   * In some cases, the `startpostgres` command may need to be run first.
5. Create a new database using the `CREATE DATABASE lightbnb;` command, where 'lightbnb' is the name you want to call this new db.
6. Connect to the new database with the `\c lightbnb` command, where 'lightbnb' is whichever name you chose for your new db in the the previous step.

### Set up DB Tables

7. Set up database tables by running the migrations file using the `\i migrations/01_schema.sql` command.
   * To verify the tables have been created, run command `\dt` and you should see tables named: 'guest_reviews', 'properties', 'property_reviews', 'rates', 'reservations', and 'users'.

### Add Data to Tables

8. To add data the tables, run the seeds files. Please note that '01_seeds.sql' is optional, but can be useful for testing purposes.  
**From the project root folder**, the commands to run are:  
   * `\i seeds/01_seeds.sql`
   * `\i seeds/02_seeds.sql`
   * To confirm that your tables have been populated with data, run command `SELECT * FROM users;` (or any of the table names) and you should see some data displayed.
   * You can now exit postgres by typing `\q` to return to your command line.

### Add Database Credentials to **dotenv** file (`.env`)

9. Using the provided '.env.example' file as a template, create a new `.env` file in the same folder.
10. Add your database name, username, and password.
    * Note: If running the app locally, the 'DB_HOST' would be 'localhost', and for PostgreSQL the 'PORT' will usually be '5432'.
    * For security reasons, the `.env` file has been added to the `.gitignore` file, so these sensitive details will not accidentally be published to GitHub.

### Start the App

11. **From within the 'LightBnB_WebApp' folder**, run the `npm run local` command, and the app will be served at [http://localhost:3000](http://localhost:3000).
12. Visit [http://localhost:3000](http://localhost:3000) in your browser.
13. Start planning your ideal getaway! 🏡

## Queries

To run the various queries available, please ensure that you are connected and logged in to the database.   
Then, use the code commands provided below (along with some examples of expected results) to interact with the database.

1. Show details about a single user:  
`\i 1_queries/1_user_login.sql`  
```
 id |     name      |          email          |                       password
----+---------------+-------------------------+-------------------------------------------------------
  4 | Devin Sanders | tristanjacobs@gmail.com | (displays hashed password, omitted here for security)
(1 row)
```

2. Show average duration of all reservations:  
`\i 1_queries/2_average_length_of_reservation.sql`  
```
  average_duration
---------------------
 14.6648005598320504
(1 row)
```

3. Show specific details (including average star rating) about properties located in Vancouver:  
`\i 1_queries/3_property_listings_by_city.sql`
```
 id  |       title        | cost_per_night |   average_rating
-----+--------------------+----------------+--------------------
 200 | Build they         |          34822 | 4.2222222222222222
 895 | Hold guess         |          41952 | 4.5000000000000000
  64 | Extra sheep        |          48794 | 4.1428571428571429
 152 | Present television |          53062 | 4.1666666666666667
(4 rows)
```

4. Show the most visited cities, and the total number of reservations in each city:  
`\i 1_queries/4_most_visited_cities.sql`  
```
          city          | total_reservations
------------------------+--------------------
 Carcross               |                409
 Town of Hay River      |                401
 Whitehorse             |                342
 Town of Inuvik         |                313
 Yellowknife            |                248
(253 rows)
```

5. Show the 10 most recent reservations for a specific user:  
`\i 1_queries/5_all_my_reservations.sql`
```
   id    |     title      | cost_per_night | start_date |   average_rating
---------+----------------+----------------+------------+--------------------
 1017016 | Married rich   |          64002 | 2014-05-17 | 4.1666666666666667
 1010127 | Sudden troops  |          16503 | 2014-08-17 | 3.7777777777777778
 1012625 | Chapter still  |           2936 | 2015-07-30 | 4.2727272727272727
 1013921 | Popular some   |          30184 | 2016-05-11 | 4.2857142857142857
 1010623 | Law expression |          50749 | 2016-07-08 | 4.1666666666666667
(10 rows)
```

## Project ERD (Entity Relationship Diagram)

A link to the ERD with dynamic highlighting of table relationships is available [HERE](https://dbdocs.io/kayvee123/ERD-LightBnB?view=relationships)  

!["Screenshot of ERD"](/docs/ERD-LightBnB.png)

## Project Structure

```
.
├── 1_queries
│   ├── 1_user_login.sql
│   ├── 2_average_length_of_reservation.sql
│   ├── 3_property_listings_by_city.sql
│   ├── 4_most_visited_cities.sql
│   ├── 5_all_my_reservations.sql
├── docs
├── LightBnB_WebApp
│   ├── db
│   │   ├── json
│   │   ├── database.js
│   │   └── index.js
│   ├── public
│   │   ├── javascript
│   │   │   ├── components 
│   │   │   │   ├── header.js
│   │   │   │   ├── login_form.js
│   │   │   │   ├── new_property_form.js
│   │   │   │   ├── property_listing.js
│   │   │   │   ├── property_listings.js
│   │   │   │   ├── search_form.js
│   │   │   │   └── signup_form.js
│   │   │   ├── libraries
│   │   │   ├── index.js
│   │   │   ├── network.js
│   │   │   └── views_manager.js
│   │   ├── styles
│   │   │   ├── main.css
│   │   │   └── main.css.map
│   │   └── index.html
│   ├── routes
│   │   ├── apiRoutes.js
│   │   └── userRoutes.js
│   ├── styles  
│   │   ├── _forms.scss
│   │   ├── _header.scss
│   │   ├── _property-listings.scss
│   │   └── main.scss
│   ├── .gitignore
│   ├── package-lock.json
│   ├── package.json
│   └── server.js
├── migrations
│   ├── 01_schema.sql
├── seeds
│   ├── 01_seeds.sql
│   ├── 02_seeds.sql
├── README.md
```

* `queries` is a directory that contains various SQL queries that can be run directly against the database.
* `docs` is a directory containing supporting documentation & images for the `README.md` file.
* `LightBnB_WebApp` contains all the LightBnB client side web app code.
  * `db` contains all the database interaction code.
    * `json` is a directory that contains a bunch of dummy data in `.json` files.
    * `database.js` defines all queries related to the database and uses an imported `query` function to execute SQL queries against the database.
    * `index.js` establishes a connection to the database and exports a `query` function used by `database.js` to interact with the database.
  * `public` contains all of the HTML, CSS, and client side JavaScript. 
    * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
    * `javascript` contains all of the client side javascript files.
      * `index.js` starts up the application by rendering the listings.
      * `network.js` manages all ajax requests to the server.
      * `views_manager.js` manages which components appear on screen.
      * `components` contains all of the individual html components. They are all created using jQuery.
  * `routes` contains the router files which are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `styles` contains all of the sass files. 
  * `server.js` is the entry point to the application. This connects the routes to the database.
* `migrations` is a directory that contains a schema file to setup the database tables.
* `seeds` is a directory that contains seed files to add data to the database tables.