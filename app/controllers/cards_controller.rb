class CardsController < ApplicationController

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to cards_path, notice: t("notice.card.created")
    else
      render action: :new
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  private

  def card_params
    params.require(:card).permit(:f_name, :m_name, :l_name, :birthday, :tel, :gender)
  end
end
