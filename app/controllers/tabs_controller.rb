class TabsController < ApplicationController
  before_action :set_tab, only: [:show, :edit, :update, :destroy]

  # GET /tabs
  # GET /tabs.json
  def index
    @tabs = Tab.all
    authorize @tabs
  end

  # GET /tabs/1
  # GET /tabs/1.json
  def show
  end

  # GET /tabs/new
  def new
    @tab = Tab.new
    authorize @tab
  end

  # GET /tabs/1/edit
  def edit
  end

  # POST /tabs
  # POST /tabs.json
  def create
    @tab = Tab.new(tab_params)
    authorize @tab

    respond_to do |format|
      if @tab.save
        format.html { redirect_to @tab, notice: 'Tab was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tab }
      else
        format.html { render action: 'new' }
        format.json { render json: @tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tabs/1
  # PATCH/PUT /tabs/1.json
  def update
    respond_to do |format|
      if @tab.update(tab_params)
        format.html { redirect_to @tab, notice: 'Tab was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tabs/1
  # DELETE /tabs/1.json
  def destroy
    @tab.destroy
    respond_to do |format|
      format.html { redirect_to tabs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tab
      @tab = Tab.find(params[:id])
      authorize @tab
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tab_params
      params.require(:tab).permit(:name, :position)
    end
end
