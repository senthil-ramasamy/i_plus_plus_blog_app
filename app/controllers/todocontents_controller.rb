class TodocontentsController < ApplicationController
  before_action :set_todocontent, only: [:show, :edit, :update, :destroy]

  # GET /todocontents
  # GET /todocontents.json
  def index
    @todocontents = Todocontent.all
  end

  # GET /todocontents/1
  # GET /todocontents/1.json
  def show
  end

  # GET /todocontents/new
  def new
    @todocontent = Todocontent.new
  end

  # GET /todocontents/1/edit
  def edit
  end

  # POST /todocontents
  # POST /todocontents.json
  def create
    @todocontent = Todocontent.new(todocontent_params)

    respond_to do |format|
      if @todocontent.save
        format.html { redirect_to @todocontent, notice: 'Todocontent was successfully created.' }
        format.json { render :show, status: :created, location: @todocontent }
      else
        format.html { render :new }
        format.json { render json: @todocontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todocontents/1
  # PATCH/PUT /todocontents/1.json
  def update
    respond_to do |format|
      if @todocontent.update(todocontent_params)
        format.html { redirect_to @todocontent, notice: 'Todocontent was successfully updated.' }
        format.json { render :show, status: :ok, location: @todocontent }
      else
        format.html { render :edit }
        format.json { render json: @todocontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todocontents/1
  # DELETE /todocontents/1.json
  def destroy
    @todocontent.destroy
    respond_to do |format|
      format.html { redirect_to todocontents_url, notice: 'Todocontent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todocontent
      @todocontent = Todocontent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todocontent_params
      params.require(:todocontent).permit(:name, :done)
    end
end
