class SiteAppraisalsController < ApplicationController
  before_action :set_site_appraisal, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destroy]

  # GET /site_appraisals or /site_appraisals.json
  def index
    @site_appraisals = SiteAppraisal.all
  end

  # GET /site_appraisals/1 or /site_appraisals/1.json
  def show
  end

  # GET /site_appraisals/new
  def new
    @site_appraisal = current_user.site_appraisals.build
  end

  # GET /site_appraisals/1/edit
  def edit
  end

  # POST /site_appraisals or /site_appraisals.json
  def create
    # @site_appraisal = SiteAppraisal.new(site_appraisal_params)
    @site_appraisal = current_user.site_appraisals.build(site_appraisal_params)

    respond_to do |format|
      if @site_appraisal.save
        format.html { redirect_to @site_appraisal, notice: "Site appraisal was successfully created." }
        format.json { render :show, status: :created, location: @site_appraisal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @site_appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_appraisals/1 or /site_appraisals/1.json
  def update
    respond_to do |format|
      if @site_appraisal.update(site_appraisal_params)
        format.html { redirect_to @site_appraisal, notice: "Site appraisal was successfully updated." }
        format.json { render :show, status: :ok, location: @site_appraisal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_appraisal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_appraisals/1 or /site_appraisals/1.json
  def destroy
    @site_appraisal.destroy
    respond_to do |format|
      format.html { redirect_to site_appraisals_url, notice: "Site appraisal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @site_appraisal = current_user.site_appraisals.find_by(id: params[:id])
    redirect_to site_appraisals_path, notice: 'Not Authorised!' if @site_appraisal.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_appraisal
      @site_appraisal = SiteAppraisal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_appraisal_params
      params.require(:site_appraisal).permit(:address, :lease_length, :fixed_or_rising, :rent, :rent_free, :rateable_value, :service_charge, :insurance, :utilities, :members_of_staff, :estimated_total_wages, :cost_of_sales_as_percentage_of_turnover, :projections, :fit_out, :designs, :planning_application, :legal_fees, :building_survey, :surveyor, :stamp_duty, :user_id)
    end
end
