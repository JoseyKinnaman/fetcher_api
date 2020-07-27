# _Fetcher API_
### By Jozy Kinnaman
### July, 2020

## Description
A pet name database and opensource API made as a tool for pet owners and animal shelters that corresponds with the Fetch App.

## Setup//Install
 * Clone in terminal : https://github.com/JoseyKinnaman/fetcher_api.git
  * Navigate into directory by typing "cd fetcher_api"
  * Type "bundle install" to bundle gems
  * Type "rake db:setup" to create databases and migrations
  * Type "rails s" to run on local server
  * Access "localhost:3000" 
  * Heroku in Postman or cURL for calls. ```https://pet-name-api.herokuapp.com/names/random```

# Endpoints

## GET 
* /names returns all pet names and their parameters (id, name, category
* /names/:id returns an pet name and its parameters matching the id #.
* /names/random will return a random pet name and its parameters
* /names?category= will return a search result for a name by a specific category: Example categories: Animals, Spooky Stuff, People Names, Famous Animals, New Age, Alternative, Famous People, Nonsensical, Food and Drink, International, and Fictional Characters.


## DELETE
* /names/:id will delete an pet and its parameters matching the id

## POST
* /names will create an name and add it to the database

## PUT
* /names/:id will update a parameter or parameters of an name

## Known Bugs
  * _no known bugs_

## Contact//Support//Submission
jozypants@gmail.com or make a pull request to this API.

## Technologies Used
  * Ruby
  * Rails
  * Active record
  * Postgres

## License 
Jozy Kinnaman (c) 2020 MIC

# Fetcher API Documentation 
This API uses `POST` request to communicate and HTTP [response codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) to indenticate status and errors. All responses come in standard JSON. All requests must include a `content-type` of `application/json` and the body must be valid JSON.

## Response Codes 
### Response Codes
```
200: Success
400: Bad request
401: Unauthorized
404: Cannot be found
405: Method not allowed
422: Unprocessable Entity 
50X: Server Error
```
### Error Codes Details
```
100: Bad Request
110: Unauthorized
120: User Authenticaion Invalid
130: Parameter Error
140: Item Missing
150: Conflict
160: Server Error
```
### Example Error Message
```json
http code 402
{
    "code": 404,
    "message": "Cannot be found
    ",
    "resolve": "Couldn't find name with 'id'=101"
}
```
To Do:
- Make interface for api?
- post to open source
- make open source


