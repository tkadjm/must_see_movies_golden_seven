Rails.application.routes.draw do
  # INDEX
  get("/directors",                 { :controller => "directors", :action => "index"       })

  # Create
  get("/directors/new",            { :controller => "directors", :action => "new_form"    })
  get("/directors/create_director",{ :controller => "directors", :action => "create_row"  })

  # UPDATE

  # READ
  get("directors",                  { :controller => "directors", :action => "index"       })
  get("/directors/:id",             { :controller => "directors", :action => "show"        })

  get("/delete_director/:id",       { :controller => "directors", :action => "destroy"     })

end
