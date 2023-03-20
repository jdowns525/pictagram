Rails.application.routes.draw do



  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  post("/insert_like", { :controller => "likes", :action => "create" })
          
  # READ
  get("/likes", { :controller => "likes", :action => "index" })
  
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  
  # UPDATE
  
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  
  # DELETE
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  #------------------------------

  # Routes for the User follower resource:

  # CREATE
  post("/insert_user_follower", { :controller => "user_followers", :action => "create" })
          
  # READ
  get("/user_followers", { :controller => "user_followers", :action => "index" })
  
  get("/user_followers/:path_id", { :controller => "user_followers", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_follower/:path_id", { :controller => "user_followers", :action => "update" })
  
  # DELETE
  get("/delete_user_follower/:path_id", { :controller => "user_followers", :action => "destroy" })

  #------------------------------

  # Routes for the User feed resource:

  # CREATE
  post("/insert_user_feed", { :controller => "user_feeds", :action => "create" })
          
  # READ
  get("/user_feeds", { :controller => "user_feeds", :action => "index" })
  
  get("/user_feeds/:path_id", { :controller => "user_feeds", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_feed/:path_id", { :controller => "user_feeds", :action => "update" })
  
  # DELETE
  get("/delete_user_feed/:path_id", { :controller => "user_feeds", :action => "destroy" })

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  post("/insert_photo", { :controller => "photos", :action => "create" })
          
  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  
  # UPDATE
  
  post("/modify_photo/:path_id", { :controller => "photos", :action => "update" })
  
  # DELETE
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
