class EnglishesController < ApplicationController
  before_action :set_english, only: %i[ show edit update destroy ]

  # GET /englishes or /englishes.json
  def index
    @englishes = English.all
  end

  # GET /englishes/1 or /englishes/1.json
  def show
  end

  # GET /englishes/new
  def new
    @english = English.new
  end

  # GET /englishes/1/edit
  def edit
  end

  # POST /englishes or /englishes.json
  def create
    @english = English.new(english_params)

    respond_to do |format|
      if @english.save
        format.html { redirect_to english_url(@english), notice: "English was successfully created." }
        format.json { render :show, status: :created, location: @english }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @english.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /englishes/1 or /englishes/1.json
  def update
    respond_to do |format|
      if @english.update(english_params)
        format.html { redirect_to english_url(@english), notice: "English was successfully updated." }
        format.json { render :show, status: :ok, location: @english }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @english.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /englishes/1 or /englishes/1.json
  def destroy
    @english.destroy

    respond_to do |format|
      format.html { redirect_to englishes_url, notice: "English was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_english
      @english = English.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def english_params
      params.require(:english).permit(:title, :name)
    end
end
