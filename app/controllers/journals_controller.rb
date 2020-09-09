class JournalsController < ApplicationController
    def index
        @journals = @current_user.journals
    end

    def show
        @journal = Journal.find(params[:id])
    end

    def new
        @journal = Journal.new
    end

    def create
        @journal = @current_user.journals.create(journal_params)
        redirect_to journal_path(@journal)
    end

    def destroy
        @journal = Journal.find(params[:id]) 
        @journal.destroy
        redirect_to journals_path
    end

    def edit
        @journal = Journal.find(params[:id])
    end

    def update
        @journal = Journal.find(params[:id])
        journal_params = params.require(:journal).permit(:content)
        @journal.update(journal_params)
        redirect_to journal_path(@journal)
    end


    private

    def journal_params
        journal_params = params.require(:journal).permit(:date, :content)
    end

 


    
end
