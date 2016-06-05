# PG4300-16-14-PreBen - FusiCian

Participants <name, e-mail, westerdals-username, github-username>
- Benjamin Andresen Lyberg, andben14@student.westerdals.no, andben14, BenjaminLyberg
- Preben Gundersen, gunpre14@student.westerdals.no, gunpre14, gunpre14

About FusiCian (oneliner):
FusiCian is a site where you as a Musician can register and connect with other musicians. 

Site deployed to Heroku, at http://fusician.herokuapp.com

This assignment has made us face many issues for the first time, and shown us a great deal of how powerful Rails is.
The main surprise was how fast you can go from nothing to something that works, and use different gems to create a unique solution.


Some of the cool functions we've added so far is
- User registration                 (Devise)
- Image uploading                   (Paperclip)
- Upvote function                   (Act's as votable)
- Connect to other users            (Has friendship)
- Payment for premium membership    (Stripe)
- Sending email to users            (ActionMailer)
- Admin overview and privileges     (RailsAdmin)


Due to timeconstraints we couldn't fullfill all the functions we visualised, and
ideas for future modifications are 
- Ability to edit your own profile from profile itself, instead of using a edit form.
- Ability to search for other critera than location
- Ability to customize own profile even more, with more photos etc.
- Give premium users more features on their profile pages, as promised in the subscribtion option.
- Private messaging system for interaction between users (represented by the mail-icon in profile page - this icon now links to the upvote action)
- Various design changes


USER STORIES (Gherkin)

Scenario: User edits it's profile
  Given I'm a logged-in user
  When I click on the cogwheel in the header
  And click on 'edit profile'
  Then I will be able to update every field in my profile page
  And save the changes I've made.

Scenario: User can promote itself
  Given I'm a logged-in user with a premium subscribtion
  When other users watch the main page
  I will be visible under 'featured artists'.

Scenario: User can lsiten to other users pieces
  Given I visit a users profile page
  And click on an available track
  I will be able to listen to the users song

Scenario: User can connect with other users
  Given I'm a logged-in user 
  When I go to other user profiles 
  And click "connect" 
  Then a request to connect will be sent to the user.

Scenario: User can upvote other users
  Given I'm a logged-in user
  And connected to another user
  When I go to this users profile
  And click "Upvote"
  Then their upvote-count will increment. 

Scenario: User can search for other musicians 
  Given I visit the "search" page
  And type in the location of my choice and click "search"
  Then I will be able to browse all musicians in the given location.


  

ADMIN ACCESS

To get access to the admin panel, log in on http://fusician.herokuapp.com as admin@admin.no, with the password "passord1". Then proceed to http://fusician.herokuapp.com/admins.
In the admin panel you have the ability to create new, delete or edit all Users or comments created in the webapp. 


TESTING

Unfortunately we have not made any tests for this web application. This is due to the fact of major issues with integration of Devise in the test enviroment and lack of time.
We have spent alot of time trying to get to the root of the problem, without any luck. With this in mind, we clearly see the benefits of test-driven developement. If we
developed this application with a "test first"-mentality, we would probably never have faced these issues in the first place. 

