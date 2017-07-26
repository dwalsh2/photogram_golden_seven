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
      
      redirect_to "/photos"
    end
    
    
    def index
        
      @our_photos = Photo.order(:created_at => :desc)
            
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
      
      @the_photo = Photo.find(params["an_id"])
      
      
      render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
      
      @photo = Photo.find(params["some_id"])
      
      @photo.source = params["the_source"]
      @photo.caption = params["the_caption"]

      @photo.save
      
      redirect_to "/photos/" + @photo.id
    end
    
    def destroy_row
      
      @the_photo = Photo.find(params["toast_id"])
      @the_photo.destroy
      
      @remaining_photos = Photo.count
      
      redirect_to "/photos"
    end
    
    
end

