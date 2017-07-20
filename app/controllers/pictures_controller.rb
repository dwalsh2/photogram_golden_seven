class PicturesController < ApplicationController
    def new_form
        
        render("pic_templates/new_form.html.erb")
    end
    
    def index
        
        # our_photos=Photo.each do |pics|
            
        
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
    
    # def create_row
    #     p = Photo.new_form
        
    #     p.source = 
    
    # end
    
    
end

