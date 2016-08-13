# WDI_21_PROJECT_2 MyGym
##Gym management system

###Introduction

The MyGym app was a project for buidling a multi model Rail app. This is the __first app__ I have built using _Ruby On Rails_

###Technologies employed...

##### Ruby Gems

* devise 4.2.0 for authentication
* carrierwave 0.10.0 for file uploads
* rmagick loaded but not yet implemented for image manipulation
* bootstrap 4.0.0.aplpha3.1 for underlying CSS
* rqrcode-with-patches 0.5.4 for QR code creation
* ideal_postcodes tested but not yet fully deployed for postcode look up


The working app can be seen on [Heroku https://mygymapp.herokuapp.com/](https://mygymapp.herokuapp.com/)

The idea behind the MyGym app is that it could be used the owner of gym to provide not only a website for their business but it would also help with administration, communication, organistaion and motivation of members. The sytem allows:

* New members to register on line

* There is a full password secure administraion suite built in
* QR code technology to generate a membership card which could be linked to a door entry system or turnstile. 
* The membership card ccould in a future release be linked to membership fee payment records. 
* Owners can maintain a list of different membership types and functionality to record payments could be added in future
* Peronal Trainers and Teachers can add edit and update classes they provide
* There is a secure messaging system which means trainers and members do not have to use theri personal email, messages or mobile number for communication
* The sytem can provide motivation through simple statistics on user visits, this could be liked to motivational remindr messages in future

###User Journeys

To determine what database structure may be required I created a series of user journeys 


![](readmeimages/userstories.png?raw=true)

###Databse ERD

![](readmeimages/ERD%20.png?raw=true)

![](readmeimages/Fields.png?raw=true)







###Configuration & Installation instructions
These instructions are for setting up MyGym on a Mac computer.

To install _MyGym_ you will require Ruby On Rails 5.0 this link is a good guide on how to do this  http://railsapps.github.io/installing-rails.html

You have Rails up and running you can load the my gym app.

To start open terminal on your machine (cmd-spacebar then type ter and selecet terminal).

Navigate to the folder where you have downloaded the MyGym app.

* Enter _bundle_ once that process has finished.
* Enter _Rails db:dump db:create db:migrate db:seed 
* It may take a few seconds for the system to build the first time



###Copyright and licensing information


###Contact Details

This app was written by JulesJam 
to contact me email:

Juian Wyatt

julian.wyatt@tradescant.co.uk

####Known bugs

Some features are still ind development at this time

* Tests need to be added
* Admin cannot edit users only a user can edit themselves
* Membership payments is not yet linked in
* Automated messaging when booking classes
* The picture gallery is currently very simplistic
* Some validations and fucntionality need to be moved from the views to the models


### Troubleshooting

All sugesstions welcome on any bugs or issues


###Credits and acknowledgements
Credit to Mike Hayden, Chanse Campbell, Rossanna Rossington and all at General Assembly London

#####ChangeLog

This is version 1.00 