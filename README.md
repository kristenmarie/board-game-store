# Board Game Store Site

#### An application for products and user reviews/ratings for a board game store, 12.01.2017

![image](image link here)

#### By Kristen Marie Kulha

## Description

This simple web application allows admin users to add, update and delete products as well as user reviews. Users can click on products to view their detail page and also add a review.

##User Stories

* Only Admins can add, update and delete new products
* Only Admins can delete reviews
* Users can create an account
* Users can click an individual product to see the detail page
* Users that have created an account and are logged in can add a review to a product

## Setup/Installation Requirements
* Clone this repository
* In terminal, navigate to this projects root directory (board_game_store)
* In terminal (while still in root directory), enter the following commands:
  * ``` $ bundle install ```
  * ``` $ rails db:setup ```
  * ``` $ rails db:test:prepare ```
  * ``` $ rails serve ```
* Then navigate to http://localhost:3000/ in web browser of choice.



## 🐛Known Bugs🐛

There are no known bugs at this time.

## Future functionality

* Add more styling.
* Add product images.
* Include user dashboard that displays their reviewed games.
* Add genres field to product table.
* Sort and display games by selected genre.
* Send users welcome message when they register their account.
* Implement ActiveAdmin to create an administrator dashboard.
* Allow users to add products to a shopping cart, and go through a "checkout" process to receive a total and a receipt.
* Seeded database

## 📧Support and contact details📧

Feel free to contact me at kristen.m.kulha@gmail.com

## Technologies Used

_Ruby on Rails, RSpec, Capybara, FactoryBot, Devise, Bootstrap_

### License

This software is licensed under the MIT license.
Copyright (c) 2017 **_Kristen Marie Kulha_**
