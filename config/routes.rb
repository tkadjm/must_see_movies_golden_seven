Rails.application.routes.draw do

  # INDEX
  get("/directors",                    { :controller => "directors", :action => "index"       })


  # CREATE
  get("/directors/new_form",           { :controller => "directors", :action => "new_form"    })
  get("/directors/create_director",    { :controller => "directors", :action => "create_row"  })


  # UPDATE
  get("/directors/:id/edit_form",      { :controller => "directors", :action => "edit_form"   })
  get("/update_director/:id",          { :controller => "directors", :action => "update_row"  })


  # READ
  get("directors",                     { :controller => "directors", :action => "index"       })
  get("/directors/:id",                { :controller => "directors", :action => "show"        })


  # DELETE
  get("/delete_director/:id",          { :controller => "directors", :action => "destroy"     })

end
