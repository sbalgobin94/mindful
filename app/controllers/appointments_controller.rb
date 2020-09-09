class AppointmentsController < ApplicationController

    before_action :get_appointment, only: [:show, :edit, :update, :destroy]


    def new
        @appointment = Appointment.new
        @therapists = Therapist.all
    end

    def create
        @appointment = @current_user.appointments.create(appointment_params)
        redirect_to appointments_path
    end

    def index
        @appointments = @current_user.appointments
    end

    def show
    end

    def edit
        @therapists = Therapist.all
    end

    def update
        @appointment.update(appointment_params)
        redirect_to appointments_path
    end

    def destroy
        @appointment.destroy
        redirect_to appointments_path
      end


    private

    def get_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        appointment_params = params.require(:appointment).permit(:user_id, :therapist_id, :date, :time)
    end


end
