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


end

    
    


