class Review2sController < ApplicationController
  before_action :set_review2, only: [:show, :edit, :update, :destroy]

  # GET /review2s
  # GET /review2s.json
  def index
    @review2s = Review2.all
  end

  # GET /review2s/1
  # GET /review2s/1.json
  def show
  end

  # GET /review2s/new
  def new
    @review2 = Review2.new
  end

  # GET /review2s/1/edit
  def edit
  end

  # POST /review2s
  # POST /review2s.json
  def create
    @review2 = Review2.new(review2_params)

    respond_to do |format|
      if @review2.save
        format.html { redirect_to @review2, notice: 'Review2 was successfully created.' }
        format.json { render :show, status: :created, location: @review2 }
      else
        format.html { render :new }
        format.json { render json: @review2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review2s/1
  # PATCH/PUT /review2s/1.json
  def update
    respond_to do |format|
      if @review2.update(review2_params)
        format.html { redirect_to @review2, notice: 'Review2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @review2 }
      else
        format.html { render :edit }
        format.json { render json: @review2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review2s/1
  # DELETE /review2s/1.json
  def destroy
    @review2.destroy
    respond_to do |format|
      format.html { redirect_to review2s_url, notice: 'Review2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review2
      @review2 = Review2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review2_params
      params.require(:review2).permit(:rating, :comment)
    end
end
