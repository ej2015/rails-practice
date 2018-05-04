class MaidsController < ApplicationController
  before_action :set_maid, only: [:show, :edit, :update, :destroy]

  # GET /maids
  # GET /maids.json
  def index
    @maids = Maid.all
  end

  # GET /maids/1
  # GET /maids/1.json
  def show
  end

  # GET /maids/new
  def new
    @maid = Maid.new
  end

  # GET /maids/1/edit
  def edit
  end

  # POST /maids
  # POST /maids.json
  def create
    @maid = Maid.new(maid_params)

    respond_to do |format|
      if @maid.save
        format.html { redirect_to @maid, notice: 'Maid was successfully created.' }
        format.json { render :show, status: :created, location: @maid }
      else
        format.html { render :new }
        format.json { render json: @maid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maids/1
  # PATCH/PUT /maids/1.json
  def update
    respond_to do |format|
      if @maid.update(maid_params)
        format.html { redirect_to @maid, notice: 'Maid was successfully updated.' }
        format.json { render :show, status: :ok, location: @maid }
      else
        format.html { render :edit }
        format.json { render json: @maid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maids/1
  # DELETE /maids/1.json
  def destroy
    @maid.destroy
    respond_to do |format|
      format.html { redirect_to maids_url, notice: 'Maid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maid
      @maid = Maid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maid_params
      x = params.require(:maid).permit(:m_fname, :m_lname, :m_ms, :m_nationality, :m_dob, :m_passport, :m_emp_status, :m_wp_no, :sb_transmission, :cov_months, :security_bond, :waiver_of_indemnity, :performance_bond)
			x[:m_dob] = DateTime.strptime(x[:m_dob], "%d-%m-%Y")
			x
    end
end
