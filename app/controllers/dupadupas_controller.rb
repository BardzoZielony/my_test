class DupadupasController < ApplicationController
  # GET /dupadupas
  # GET /dupadupas.xml
  def index
    @dupadupas = Dupadupa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dupadupas }
    end
  end

  # GET /dupadupas/1
  # GET /dupadupas/1.xml
  def show
    @dupadupa = Dupadupa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dupadupa }
    end
  end

  # GET /dupadupas/new
  # GET /dupadupas/new.xml
  def new
    @dupadupa = Dupadupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dupadupa }
    end
  end

  # GET /dupadupas/1/edit
  def edit
    @dupadupa = Dupadupa.find(params[:id])
  end

  # POST /dupadupas
  # POST /dupadupas.xml
  def create
    @dupadupa = Dupadupa.new(params[:dupadupa])

    respond_to do |format|
      if @dupadupa.save
        format.html { redirect_to(@dupadupa, :notice => 'Dupadupa was successfully created.') }
        format.xml  { render :xml => @dupadupa, :status => :created, :location => @dupadupa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dupadupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dupadupas/1
  # PUT /dupadupas/1.xml
  def update
    @dupadupa = Dupadupa.find(params[:id])

    respond_to do |format|
      if @dupadupa.update_attributes(params[:dupadupa])
        format.html { redirect_to(@dupadupa, :notice => 'Dupadupa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dupadupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dupadupas/1
  # DELETE /dupadupas/1.xml
  def destroy
    @dupadupa = Dupadupa.find(params[:id])
    @dupadupa.destroy

    respond_to do |format|
      format.html { redirect_to(dupadupas_url) }
      format.xml  { head :ok }
    end
  end
end
