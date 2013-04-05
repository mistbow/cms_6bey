class DealsController < ApplicationController

  def index
    unless params[:t]
       @deals = Deal.order("id desc").paginate(:page => params[:page], :per_page => 24)
    else
      @deals = Deal.where("tag_id =? ",params[:t]).order("id desc").paginate(:page => params[:page], :per_page => 24)
    end 
  end

  def show
    @deal = Deal.find(params[:id])
    @like_deals = Deal.first(20)
    @deal.visit_add_one
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deal }
    end
  end

  def search 
    @deals = Deal.where("title like ?",'%'+params[:q]+'%').order("id desc").paginate(:page => params[:page], :per_page => 24)
  end

  def new
    @deal = Deal.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deal }
    end
  end

  # GET /deals/1/edit
  def edit
    @deal = Deal.find(params[:id])
  end

  # POST /deals
  # POST /deals.json
  def create
    @deal = Deal.new(params[:deal])

    respond_to do |format|
      if @deal.save
        format.html { redirect_to @deal, notice: 'Deal was successfully created.' }
        format.json { render json: @deal, status: :created, location: @deal }
      else
        format.html { render action: "new" }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deals/1
  # PUT /deals/1.json
  def update
    @deal = Deal.find(params[:id])

    respond_to do |format|
      if @deal.update_attributes(params[:deal])
        format.html { redirect_to @deal, notice: 'Deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1
  # DELETE /deals/1.json
  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy

    respond_to do |format|
      format.html { redirect_to deals_url }
      format.json { head :no_content }
    end
  end
end
