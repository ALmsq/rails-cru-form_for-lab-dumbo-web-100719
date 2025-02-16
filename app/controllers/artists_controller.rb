class ArtistsController < ApplicationController
    
    before_action :set_artist, only: [:show, :edit, :update]
    
    def index
        @artists = Artist.all
    end

    def show
        #model
    end

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create(artist_params)
        redirect_to artist_path(artist)
    end

    def edit
        #model
    end

    def update
        #model
        @artist = Artist.update(artist_params)
        redirect_to @artist
    end

    private
    
    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def set_artist
        @artist = Artist.find(params[:id])
    end
end
