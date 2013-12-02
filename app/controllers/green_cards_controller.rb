class GreenCardsController < ApplicationController
  before_action :set_green_card, only: [:show, :edit, :update, :destroy]

  # GET /green_cards
  # GET /green_cards.json
  def index
    @green_cards = GreenCard.all
  end

  # GET /green_cards/1
  # GET /green_cards/1.json
  def show
  end

  # GET /green_cards/new
  def new
    @green_card = GreenCard.new
  end

  # GET /green_cards/1/edit
  def edit
  end

  # POST /green_cards
  # POST /green_cards.json
  def create
    @green_card = GreenCard.new(green_card_params)

    respond_to do |format|
      if @green_card.save
        format.html { redirect_to @green_card, notice: 'Green card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @green_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @green_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /green_cards/1
  # PATCH/PUT /green_cards/1.json
  def update
    respond_to do |format|
      if @green_card.update(green_card_params)
        format.html { redirect_to @green_card, notice: 'Green card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @green_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /green_cards/1
  # DELETE /green_cards/1.json
  def destroy
    @green_card.destroy
    respond_to do |format|
      format.html { redirect_to green_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_green_card
      @green_card = GreenCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def green_card_params
      params[:green_card]
    end
end
