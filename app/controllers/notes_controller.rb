class NotesController < ApplicationController
before_action :load_card

  def new
    @note = Note.new
  end

  def create
    @note =  Note.new(note_params)
    @note.card = @card
    if @note.save
      redirect_to card_path(@card), notice: t("notice.note.created")
    else
      render action: :new
    end
  end

  def show
    
  end

private
  def note_params
    params.require(:note).permit(:name, :description, :card_id)
  end

  def load_card
    @card = Card.find(params[:card_id])
  end
end
