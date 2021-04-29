require "test_helper"

class SiteAppraisalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_appraisal = site_appraisals(:one)
  end

  test "should get index" do
    get site_appraisals_url
    assert_response :success
  end

  test "should get new" do
    get new_site_appraisal_url
    assert_response :success
  end

  test "should create site_appraisal" do
    assert_difference('SiteAppraisal.count') do
      post site_appraisals_url, params: { site_appraisal: { address: @site_appraisal.address, building_survey: @site_appraisal.building_survey, cost_of_sales_as_percentage_of_turnover: @site_appraisal.cost_of_sales_as_percentage_of_turnover, designs: @site_appraisal.designs, estimated_total_wages: @site_appraisal.estimated_total_wages, fit_out: @site_appraisal.fit_out, fixed_or_rising: @site_appraisal.fixed_or_rising, insurance: @site_appraisal.insurance, lease_length: @site_appraisal.lease_length, legal_fees: @site_appraisal.legal_fees, members_of_staff: @site_appraisal.members_of_staff, planning_application: @site_appraisal.planning_application, projections: @site_appraisal.projections, rateable_value: @site_appraisal.rateable_value, rent: @site_appraisal.rent, rent_free: @site_appraisal.rent_free, service_charge: @site_appraisal.service_charge, stamp_duty: @site_appraisal.stamp_duty, surveyor: @site_appraisal.surveyor, utilities: @site_appraisal.utilities } }
    end

    assert_redirected_to site_appraisal_url(SiteAppraisal.last)
  end

  test "should show site_appraisal" do
    get site_appraisal_url(@site_appraisal)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_appraisal_url(@site_appraisal)
    assert_response :success
  end

  test "should update site_appraisal" do
    patch site_appraisal_url(@site_appraisal), params: { site_appraisal: { address: @site_appraisal.address, building_survey: @site_appraisal.building_survey, cost_of_sales_as_percentage_of_turnover: @site_appraisal.cost_of_sales_as_percentage_of_turnover, designs: @site_appraisal.designs, estimated_total_wages: @site_appraisal.estimated_total_wages, fit_out: @site_appraisal.fit_out, fixed_or_rising: @site_appraisal.fixed_or_rising, insurance: @site_appraisal.insurance, lease_length: @site_appraisal.lease_length, legal_fees: @site_appraisal.legal_fees, members_of_staff: @site_appraisal.members_of_staff, planning_application: @site_appraisal.planning_application, projections: @site_appraisal.projections, rateable_value: @site_appraisal.rateable_value, rent: @site_appraisal.rent, rent_free: @site_appraisal.rent_free, service_charge: @site_appraisal.service_charge, stamp_duty: @site_appraisal.stamp_duty, surveyor: @site_appraisal.surveyor, utilities: @site_appraisal.utilities } }
    assert_redirected_to site_appraisal_url(@site_appraisal)
  end

  test "should destroy site_appraisal" do
    assert_difference('SiteAppraisal.count', -1) do
      delete site_appraisal_url(@site_appraisal)
    end

    assert_redirected_to site_appraisals_url
  end
end
