class ChildDupasController < ApplicationController
  # GET /child_dupas
  # GET /child_dupas.xml
  def index
    @child_dupas = ChildDupa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @child_dupas }
    end
  end

  # GET /child_dupas/1
  # GET /child_dupas/1.xml
  def show
    @child_dupa = ChildDupa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @child_dupa }
    end
  end

  # GET /child_dupas/new
  # GET /child_dupas/new.xml
  def new
    @child_dupa = ChildDupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @child_dupa }
    end
  end

  # GET /child_dupas/1/edit
  def edit
    @child_dupa = ChildDupa.find(params[:id])
  end

  # POST /child_dupas
  # POST /child_dupas.xml
  def create
    @child_dupa = ChildDupa.new(params[:child_dupa])

    respond_to do |format|
      if @child_dupa.save
        format.html { redirect_to(@child_dupa, :notice => 'Child dupa was successfully created.') }
        format.xml  { render :xml => @child_dupa, :status => :created, :location => @child_dupa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @child_dupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /child_dupas/1
  # PUT /child_dupas/1.xml
  def update
    @child_dupa = ChildDupa.find(params[:id])

    respond_to do |format|
      if @child_dupa.update_attributes(params[:child_dupa])
        format.html { redirect_to(@child_dupa, :notice => 'Child dupa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @child_dupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /child_dupas/1
  # DELETE /child_dupas/1.xml
  def destroy
    @child_dupa = ChildDupa.find(params[:id])
    @child_dupa.destroy

    respond_to do |format|
      format.html { redirect_to(child_dupas_url) }
      format.xml  { head :ok }
    end
  end
end
