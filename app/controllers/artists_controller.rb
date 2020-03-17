class ArtistsController < ApplicationController

    def show
        @artists = Artist.find(params[:id])
    end

    def new 
        @artists = Artist.new 
    end

    def create 
        @artists = Artist.new(params.require(:artist).permit(:name, :bio))
        @artists.save
        redirect_to artist_path(@artists)
    end

    def index
        @artists = Artist.all
    end

    def edit
        @artists = Artist.find(params[:id])
    end 

    def update 
        @artists = Artist.find(params[:id])
        @artists.update(artist_params(:name))
        redirect_to artist_path
    end

private
        def artist_params(*args) 
            params.require(:artist).permit!
        end


end

    
    


