class TemposController < ApplicationController
  # GET /tempos
  # GET /tempos.xml
  def index
    @tempos = Tempo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tempos }
    end
  end

  # GET /tempos/1
  # GET /tempos/1.xml
  def show
    @tempo = Tempo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tempo }
    end
  end

  # GET /tempos/new
  # GET /tempos/new.xml
  def new
    @tempo = Tempo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tempo }
    end
  end

  # GET /tempos/1/edit
  def edit
    @tempo = Tempo.find(params[:id])
  end

  # POST /tempos
  # POST /tempos.xml
  def create
    @tempo = Tempo.new(params[:tempo])

    respond_to do |format|
      if @tempo.save
        format.html { redirect_to(@tempo, :notice => 'Tempo was successfully created.') }
        format.xml  { render :xml => @tempo, :status => :created, :location => @tempo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tempo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tempos/1
  # PUT /tempos/1.xml
  def update
    @tempo = Tempo.find(params[:id])

    respond_to do |format|
      if @tempo.update_attributes(params[:tempo])
        format.html { redirect_to(@tempo, :notice => 'Tempo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tempo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tempos/1
  # DELETE /tempos/1.xml
  def destroy
    @tempo = Tempo.find(params[:id])
    @tempo.destroy

    respond_to do |format|
      format.html { redirect_to(tempos_url) }
      format.xml  { head :ok }
    end
  end
end
