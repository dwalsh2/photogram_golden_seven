class PicturesController < ApplicationController
    def new_form
        
        render("pic_templates/new_form.html.erb")
    end
    
    
    def create_row
      
      p = Photo.new
      p.source = params["the_source"]
      p.caption = params["the_caption"]
      p.save
      
      @photo_count = Photo.count
      
      render("pic_templates/create_row.html.erb")
    end
    
    
    def index
        
      @our_photos=Photo.order(:created_at => :desc)
            
      render("pic_templates/index.html.erb")
    end
    
    
    def show
        
      @pic = Photo.find(params["the_id"])
        # the_id_number = params["an_id"]
        
        # pic = Photo.find(the_id_number)
        
        # @the_source = pic.source
        # @the_caption = pic.caption
        
      render("pic_templates/show.html.erb")
    end
    
   
    def edit_form
      
      
      
      
      render("pic_templates/edit_form.html.erb")
    end
end

