# ASSESSMENT 6: Interview Practice Questions
Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: foreign key is 'animal_id' and is part of the Sightings model.

  Researched answer: same!



2. Which routes must always be passed params and why?

  Your answer: get 'animals/1' (show), patch 'animals/1' (patch), and delete 'animals/1' (destroy) - because we should specify which instance we are showing, updating, and deleting.

  Researched answer: 
  - get '/animals/1' (show)
  - get '/animals/1/edit' (edit)
  - delete '/animals/1' (destroy)



3. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess".

  Your answer: 
  get 'game/:guess' => 'main#show'



4. Name three rails generator commands. What is created by each?

  Your answer:
  $ rails g model Person name:string age:integer  #creates a model named Person with columns name and age
  $ rails g controller main #creates a controller named main where we can define methods to call in the routes
  $ rails g resource Person name:string age:integer #creates both the model Person (with the columns) and all the rail routes for us (that follows the RESTful convention)

  Researched answer:
 - same!


5. Consider the Rails routes below. Describe the responsibility of each route.

/users        method="GET"   
#index
this route shows all the instances of the model User

/users/1      method="GET"   
#show 
this route shows one of the instances (with the specified id) of the model User

/users/new    method="GET"   
#new
this route works with the "POST" method so the user can fill out a form and create a new instance of a model 

/users/       method="POST"     
#create
this route works with the "GET"(/new) method to post the new instance into the users index

/users/1      method="PUT"    
#update
this route allows the user to update data within the specified instance of the model User

/users/1      method="DELETE"
#destroy/delete
this route allows the user to delete the specified instance of the model User
