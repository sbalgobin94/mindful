class TherapistsController < ApplicationController
    def show
        @therapist = Therapist.find(params[:id])
    end

    def index
        @therapists = Therapist.all
    end

end
