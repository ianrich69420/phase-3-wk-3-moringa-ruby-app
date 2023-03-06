# Project Review

# Description

This is the project made for the seventh code challenge done in Ruby

It is an e-commerce domain with this ERD:

![ERDDiagram1](https://user-images.githubusercontent.com/117741313/223023431-e5fb886b-4c44-4a2a-bdd9-28215b572636.jpg)

It contains deliverables with classes that have the following properties and methods.

- Review

Review#user
Returns the User instance for this Review

Review#product
Returns the Product instance for this Review

Review#print_review
This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}

- Product

Product#reviews
Returns a collection of all the Reviews for the Product

Product#users
Returns a collection of all the Users who reviewed the Product

Product#leave_review(user, star_rating, comment)
Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User

Product#print_all_reviews
This should puts in the terminal a string representing each review for this product
Each review should be formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}

Product#average_rating
Returns a float representing the average star rating for all reviews for this product

- User

User#reviews
Returns a collection of all the Reviews that the User has given

User#products
Returns a collection of all the Products that the User has reviewed

User#favorite_product
Returns the product instance that has the highest star rating from this user

User#remove_reviews(product)
Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
You will have to delete any rows from the reviews table associated with this user and the product

## Project Setup

In order for you to use the content on this repo ensure you have the following:

- A computer that runs on Linux
- Ruby installed
- Any text editor such as VSCode installed

## Instructions

- Open a terminal on your computer
- Clone the repo by using the following:

        git clone https://github.com/ianrich69420/phase-3-wk-3-moringa-ruby-app.git

- After the repository has been cloned succesfully change directory to the repository folder:

        cd phase-3-wk-3-moringa-ruby-app

- Open it in a text editor of your choice, however I personally prefer using VSCode so in order to open the folder in VSCode do the following:

        code .

You can use the following steps to run the app:

- Install required dependencies

        bundle install  

- Test out the domain by:

- Migrating the tables to a development database

        bundle exec rake db:migrate

- Seeding random data into the domain

        bundle exec rake db:seed:replant

- And testing the class methods via the rake console

        bundle exec rake console

## Author
This project was contributed to by:
- [Ian Richard Orieko](https://github.com/ianrich69420/)
