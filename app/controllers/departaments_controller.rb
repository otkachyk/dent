class DepartamentsController < ApplicationController
  before_action :load_departament, only: [:edit, :show, :update, :destroy]

  def index
    @departaments = Departament.all.order(:name)
  end

  def show
    render
  end

  def new
    @departament = Departament.new
    authorize! :new, @departament
  end

  def create
    @departament = Departament.new(departament_params)
    authorize! :new, @departament
    if @departament.save
      redirect_to departaments_path, notice: t("notice.departament.created")
    else
      render action: :new
    end
  end

  def edit
    authorize! :edit, @departament
    render
  end

  def update
    authorize! :update, @departament
    if @departament.update(departament_params)
      redirect_to departaments_path, notice: t("notice.departament.updated")
    else
      render action: :new
    end
  end

  def destroy
    authorize! :destroy, @departament
    @departament.destroy
    redirect_to departaments_path, notice: t("notice.departament.deleted")
  end

  private

  def departament_params
    params.require(:departament).permit(:name)
  end

  def load_departament
    @departament = Departament.find(params[:id])
  end
end
