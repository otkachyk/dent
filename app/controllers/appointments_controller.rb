class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    @departaments = Departament.all
    @patients = Card.all
    @users = []
    if params[:departament].present?
      @users = User.where(departament: params[:departament])
    end
    if request.xhr?
      respond_to do |format|
      format.json {
      render json: {users: @users}
      }
      end
    end
  end

  def create
    # binding.pry
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      redirect_to appointments_path, notice: t("notice.card.created")
    else
      render action: :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:user_id, :card_id, :meeting_time)
  end
end
