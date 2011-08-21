class ChildDupa2sController < ApplicationController
  # GET /child_dupa2s
  # GET /child_dupa2s.xml
  def index
    @child_dupa2s = ChildDupa2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @child_dupa2s }
    end
  end

  # GET /child_dupa2s/1
  # GET /child_dupa2s/1.xml
  def show
    @child_dupa2 = ChildDupa2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @child_dupa2 }
    end
  end

  # GET /child_dupa2s/new
  # GET /child_dupa2s/new.xml
  def new
    @child_dupa2 = ChildDupa2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @child_dupa2 }
    end
  end

  # GET /child_dupa2s/1/edit
  def edit
    @child_dupa2 = ChildDupa2.find(params[:id])
  end

  # POST /child_dupa2s
  # POST /child_dupa2s.xml
  def create
    @child_dupa2 = ChildDupa2.new(params[:child_dupa2])

    respond_to do |format|
      if @child_dupa2.save
        format.html { redirect_to(@child_dupa2, :notice => 'Child dupa2 was successfully created.') }
        format.xml  { render :xml => @child_dupa2, :status => :created, :location => @child_dupa2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @child_dupa2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /child_dupa2s/1
  # PUT /child_dupa2s/1.xml
  def update
    @child_dupa2 = ChildDupa2.find(params[:id])

    respond_to do |format|
      if @child_dupa2.update_attributes(params[:child_dupa2])
        format.html { redirect_to(@child_dupa2, :notice => 'Child dupa2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @child_dupa2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /child_dupa2s/1
  # DELETE /child_dupa2s/1.xml
  def destroy
    @child_dupa2 = ChildDupa2.find(params[:id])
    @child_dupa2.destroy

    respond_to do |format|
      format.html { redirect_to(child_dupa2s_url) }
      format.xml  { head :ok }
    end
  end
end
