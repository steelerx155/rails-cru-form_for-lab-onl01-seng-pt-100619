class SongsController < ApplicationController


    def index
        @songs = Song.all
    end

        def show
            @songs = Song.find(params[:id])
        end
    
        def new 
            @songs = Song.new 
        end
    
        def create 
            @songs = Song.new(song_params)
            @songs.save
            redirect_to song_path(@songs)
        end    
       
    
        def edit
            @songs = Song.find(params[:id])
        end 
    
        def update 
            @songs = Song.find(params[:id])
            @songs.update(song_params)
            redirect_to song_path(@songs)
        end
    
    private
            def song_params
                params.require(:song).permit(:name, :artist_id, :genre_id)
            end
    
    
    

end
