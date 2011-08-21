class DupasController < ApplicationController
  # GET /dupas
  # GET /dupas.xml
  def index
    @dupas = Dupa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dupas }
    end
  end

  # GET /dupas/1
  # GET /dupas/1.xml
  def show
    @dupa = Dupa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dupa }
    end
  end

  # GET /dupas/new
  # GET /dupas/new.xml
  def new
    @dupa = Dupa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dupa }
    end
  end

  # GET /dupas/1/edit
  def edit
    @dupa = Dupa.find(params[:id])
  end

  # POST /dupas
  # POST /dupas.xml
  def create
    @dupa = Dupa.new(params[:dupa])

    respond_to do |format|
      if @dupa.save
        format.html { redirect_to(@dupa, :notice => 'Dupa was successfully created.') }
        format.xml  { render :xml => @dupa, :status => :created, :location => @dupa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dupas/1
  # PUT /dupas/1.xml
  def update
    @dupa = Dupa.find(params[:id])

    respond_to do |format|
      if @dupa.update_attributes(params[:dupa])
        format.html { redirect_to(@dupa, :notice => 'Dupa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dupa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dupas/1
  # DELETE /dupas/1.xml
  def destroy
    @dupa = Dupa.find(params[:id])
    @dupa.destroy

    respond_to do |format|
      format.html { redirect_to(dupas_url) }
      format.xml  { head :ok }
    end
  end
end
