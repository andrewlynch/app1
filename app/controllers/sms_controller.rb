class SmsController < ApplicationController
  # GET /sms
  # GET /sms.xml
  def index
    @sms = Sm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sms }
    end
  end

  # GET /sms/1
  # GET /sms/1.xml
  def show
    @sm = Sm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sm }
    end
  end

  # GET /sms/new
  # GET /sms/new.xml
  def new
    @sm = Sm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sm }
    end
  end

  # GET /sms/1/edit
  def edit
    @sm = Sm.find(params[:id])
  end

  # POST /sms
  # POST /sms.xml
  def create
    @sm = Sm.new(params[:sm])

    respond_to do |format|
      if @sm.save
        format.html { redirect_to(@sm, :notice => 'Sm was successfully created.') }
        format.xml  { render :xml => @sm, :status => :created, :location => @sm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sms/1
  # PUT /sms/1.xml
  def update
    @sm = Sm.find(params[:id])

    respond_to do |format|
      if @sm.update_attributes(params[:sm])
        format.html { redirect_to(@sm, :notice => 'Sm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sms/1
  # DELETE /sms/1.xml
  def destroy
    @sm = Sm.find(params[:id])
    @sm.destroy

    respond_to do |format|
      format.html { redirect_to(sms_url) }
      format.xml  { head :ok }
    end
  end
end
