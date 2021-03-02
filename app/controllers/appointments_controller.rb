class AppointmentsController < ApplicationController
  def index 
    appointments = Appointment.all 
    render json: appointments
  end 

  def create
    appointment = Appointment.new(appointment_params)
    if(appointment.save)
      render json: appointment 
    else
      render json: {error:"Appointment Couldnt be created."}
    end
  end 

  def update 
    appointment ||= Appointment.find_by(id:params[:id])
    if appointment && appointment.update(appointment_params)
      render json: appointment 
    else 
      render json: {error:"Appointment Couldnt be found."}
    end
  end 

  def destroy
    appointment ||= Appointment.find_by(id:params[:id])
    if appointment
      appointment.destroy
      render json: appointment 
    else 
      render json: {error:"Appointment Couldnt be found."}
    end
  end 

  private 
  def appointment_params 
    params.require(:appointment).permit(:start,:end,:user_id,:customer_id)
  end 

end
