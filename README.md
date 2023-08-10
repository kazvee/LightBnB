# LightBnB

## Project Structure

```
.
├── 1_queries
│   ├── 1_user_login.sql
│   ├── 2_average_length_of_reservation.sql
│   ├── 3_property_listings_by_city.sql
│   ├── 4_most_visited_cities.sql
│   ├── 5_all_my_reservations.sql
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