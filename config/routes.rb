Rails.application.routes.draw do


  devise_for :users
root to: 'links#index'

#User routes

get '/users/new', to: 'users#new' # shows the new user sign-up form
post '/users', to: 'users#create' # creates a user


#Links routes

get '/links/new', to: 'links#new' # show the form to create a new link
post '/links', to: 'links#create' # creates a link
get '/link/:id', to: 'links#show', as: 'link_transfer' # shows me an individual link


#Comments routes

get '/link/:id/comments', to: 'comments#show', as: 'comments_show'# get the page for a link, its comments, and comment form
post '/link/:id/comments', to: 'comments#create'  # the form action for new comment, creates a comment (if logged in)

#Session routes

get '/users/login', to: 'users#login'
post '/users/session', to: 'sessions#create'
delete '/users/session', to: 'sessions#destroy'


end




#  _commentform.html.erb
#
#
# <!--
# <div class="comments">
#   <% @comment.each do |comment| %>
#     <%= render partial: "comment", locals: {comment: comment } %>
#   <% end %>
# </div> -->
