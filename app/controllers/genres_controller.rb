class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

        def show
            @genres = Genre.find(params[:id])
        end
    
        def new 
            @genres = Genre.new 
        end
    
        def create 
            @genres = Genre.new(genre_params)
            @genres.save
            redirect_to genre_path(@genres)
        end    
       
    
        def edit
            @genres = Genre.find(params[:id])
        end 
    
        def update 
            @genres = Genre.find(params[:id])
            @genres.update(genre_params)
            redirect_to genre_path(@genres)
        end
    
    private
            def genre_params
                params.require(:genre).permit(:name)
            end
    
    
    

end
