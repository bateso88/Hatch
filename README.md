_A webapp app for Hatch_

# [Hatch](https://hatch-retail.space/)

Hatch is a budding property company that pairs small, independent retail firms with high street landlords. Hatch provides its clients with the following toolkit.

## Toolkit 
1. Growth intelligence
2. Site Appraisal
3. Create listing
4. Leasing guide
5. Community hub
6. Directory 

### Growth Intelligence
Access demographic data and analysis to help you understand where’s best for your business and how many customers you will tap in to.

### Site Appraisal 
A one stop calculator to help you appraise the affordability of each potential site and ensure all costs are factored into any decision.

### Create Listing
Advertise your business and property requirements to our database of landlords. Then sit back, relax and let them come to you.

### Leasing Guide
It’s easy to get bogged down with property and legal jargon. And hard to project manage an opening. Let us guide you along the way. 

### Community Hub
Share wisdom, contacts, and tips with other small business owners. Keep up to speed on changes to things like business rates and planning regulations.

### Directory
Solicitors, architects,  design and fit out contractors, planning consultants, recruitment agencies, you name it, we have it.  Read reviews and recommendations. 

----------------------------------------------------------------------------------

# Planning 

This app can be broken into large-ish sections that are similar to those shown in the toolkit above. 

1. Website structure 
2. Users 
3. Growth intelligence
4. Site appraisal 
5. Create listing/Community hub
6. Leasing guide/Directory 

### Website Structure 

- Hatch is now drawing sketches for their desired layout 
- These will provide a template for how to structure the website

### Users 

- This toolkit should only be avaible to registered users of the app
- Therefore there must be functionality for signing-up/signing-in/signing-out
- Fields for signing-up include: Company name, contact email, contact phone number, password
- The app will need access to a database to store user data
- Password encryption
- Email address checking

### Growth Intelligence

- The user supplies a location
- The app takes that location and accesses an API
- The app returns API data and presents it in an easily-readable format

### Site Appraisal 

- This is a relatively straightforward calculator
- Potentially this data will need to be stored 

### Create Listing/Community Hub

I have grouped these two together as they have similarities. Both require creating a 'post' which must be stored in a CRUD database and shown on-screen. 

### Leasing Guide/Directory 

These are grouped because (at first) they do not involve user input. They are simply text documents to display on the website.

Down the line, as reviews and recommendations are added to the directory, the directory will more closely resemble the 'Create Listing/Community Hub' structure. However this is low priority for now.

## Next Steps 

1. Initialise a rails project
2. Receive sketches from Hatch and create a simple website, displaying given template structure
3. Discuss with Hatch whether the preliminary order of priority is appropriate (as above)
4. Split these larger sections into much smaller, bitesize tickets and check with Hatch for order of priority. 
--------------------------------------------------------------------------------

# Tech 
- Ruby on Rails
- Rspec, Capybara, Rubocop
- PostgresQL (for development)
- AWS (for production)
- JavaScript (for frontend async updates to website e.g. API requests)
- CI/CD: Either Circle CI or Travis. 
- Heroku (for development)


`rake db:create`
`rails g controller home index` Creates a homepage (/home/index)
`rails routes`
`rails g scaffold listings company_name:string short_description:string etc..`
`rails db:migrate`
`rails g migration add_user_id_to_listings user_id:integer:index`

<!-- 
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
