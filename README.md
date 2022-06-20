# README

# after cloning the repo

cd PracticalApp
bundle install
rake db:migrate
rails s -p 4000 --binding 127.0.0.1


# Problem Statement
Mini Peerfives

# Completed

Backend
Use any DB and framework of your choice or as mentioned by interviewer/recruiter
Authentication and authorization is not needed
A single user can reward 100 P5
Entities/Models
User
ID - string
Name - string
P5 - object
{
    balance: number,
    history: Array<P5History>
}
Reward - object
{
    balance: number,
    history: Array<RewardHistory>
}
P5History
Datetime stamp
Amount - number
Given to (User ID) - string
RewardHistory
Datetime stamp
Amount - number
Given by (User ID) - string
REST APIs
User - Create, edit
P5 - Create, read, delete
Reward - Read
Frontend
We are only looking for decent UI, which can just work.
Please do not use any css framework like bootstrap, tailwind, etc.
You can use either Ruby on Rails, React, Vue, Angular or vanilla HTML/CSS/JavaScript.
Inline styles not allowed
:id in all routes below is id of user
Users List View (Default View, route = /)
A button to create new user - clicking on which user will be redirected to /new/ route
Basic Table layout with all users
Table should have 6 columns: #, Name, P5 balance, Reward balance, Login
Static count number starting with 1
Name - User's name
P5 balance - self explanatory
Reward balance - self explanatory
Login - a edit button, clicking on which user will be redirected to /:id route
Show each user in separate row
New User (route = /new)
1 input for name
Save button - saves the user, and redirects user back to list view, i.e. route /
Cancel button - redirects user back to list view, i.e. route /

