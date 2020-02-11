## Team (Contributors)

| Name                   | Email               |Student ID                 |
|------------------------|---------------------|---------------------|
| Brahim Kanouche        | bkano020@uottawa.ca |8879715      |
| Emmanuel Asinyo        | wkenn072@uottawa.ca |8890676      |
| Sébastien Sanscartier  | ssans075@uottawa.ca |6978470      |


# Project - BookStore website

A book store website to sell the pdf and hardcopies best seller and new coming books. The website will allow the user to browse for books, add them to chart and check out.

------------------

## Features
* Display list of book per category.
* browse per categorie.
* Search feature for books ( per title or per author ).
* Sort books by price.
* Add to chart.
* Check out by providing personal info and credit card info.
A book store website to sell the pdf and hardcopies best seller and new coming books. The website will allow the user to browse for books, add them to chart and check out.

------------------


# Color Palette
## Primary Colors
We will be using these colors as our primary one through the whole website. With Black or white test.
![](images/PrimaryColors.png)

## Complemenary Colors
We will be using those colors as our secondary color palette
![](images/complementaryColorPalette.JPG)

# Fonts and Type scale

| scale category| font    | size   | case      |
|---------------|---------|--------|-----------|
|  H1           | Light   |  96    | Sentence  |
|  H2           | Light   |  60    | Sentence  |
|  H3           | Regular |  48    | Sentence  |
|  H4           | Regular |  34    | Sentence  |
|  H5           | Medium  |  24    | Sentence  |
|  H6           | Regular |  20    | Sentence  |
|  body         | Regular |  16    | Sentence  |
|  p            | Regular |  16    | Sentence  |
|  button       | Medium  |  14    | All caps  |

Main font type used is: **Arial**

## Development Environment Setup Guide
----------------------------------------
Please follow those instruction to set up your local work environment. (To be added)

Used technologies: 
 - HTML5
 - CSS3
 - Javascript
 - PHP
 - SQL


## Database Schema
----------------------------------------
To be added later on

### Setup

Please follow those instruction fto set up your local machine. 

1. Download xampp: https://www.apachefriends.org/download.html 
2. Find and open ```php.ini``` in xampp file. For mac : ```application/xampp/etc``` and for windows it should be located at ```c:\xampp\php```
3. Add those lines to the end in your ```php.ini```. 
   - For mac: ```extension=pgsql.so```
   - For windows: ```extension=php_pdo_pgsql.dll``` and ```extension=php_pgsql.dll```
4. Pull this repository to your machine and make sure to locate at xampp/htdocs
3. Open in your browser ```http://localhost:8080/phpmyadmin/``` and click ```New``` at the left Navigator to create a new database. (```name= DatabaseName```, ```uft code= utf8_unicode_ci```) <br /> 
4. once ```DatabaseName``` created, navigate to your project location, usually on ```c:\xampp\htdocs\BookStore``` and import ```bookstore.sql```
5. Then ignore the error that shows up After clicking ```Go```. 

### Running the Webserver

1. Open xampp and go to manage servers and start Apache web server.
2. navigate to http://localhost/BookStore/ and you are all set :D

N.B: if you created a new folder named ```example``` to pull the repository to it, make sure to add the name of the folder in your URL (e.g: http://localhost/example/BookStore/)

