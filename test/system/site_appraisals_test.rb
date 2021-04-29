require "application_system_test_case"

class SiteAppraisalsTest < ApplicationSystemTestCase
  setup do
    @site_appraisal = site_appraisals(:one)
  end

  test "visiting the index" do
    visit site_appraisals_url
    assert_selector "h1", text: "Site Appraisals"
  end

  test "creating a Site appraisal" do
    visit site_appraisals_url
    click_on "New Site Appraisal"

    fill_in "Address", with: @site_appraisal.address
    fill_in "Building survey", with: @site_appraisal.building_survey
    fill_in "Cost of sales as percentage of turnover", with: @site_appraisal.cost_of_sales_as_percentage_of_turnover
    fill_in "Designs", with: @site_appraisal.designs
    fill_in "Estimated total wages", with: @site_appraisal.estimated_total_wages
    fill_in "Fit out", with: @site_appraisal.fit_out
    fill_in "Fixed or rising", with: @site_appraisal.fixed_or_rising
    fill_in "Insurance", with: @site_appraisal.insurance
    fill_in "Lease length", with: @site_appraisal.lease_length
    fill_in "Legal fees", with: @site_appraisal.legal_fees
    fill_in "Members of staff", with: @site_appraisal.members_of_staff
    fill_in "Planning application", with: @site_appraisal.planning_application
    fill_in "Projections", with: @site_appraisal.projections
    fill_in "Rateable value", with: @site_appraisal.rateable_value
    fill_in "Rent", with: @site_appraisal.rent
    fill_in "Rent free", with: @site_appraisal.rent_free
    fill_in "Service charge", with: @site_appraisal.service_charge
    fill_in "Stamp duty", with: @site_appraisal.stamp_duty
    fill_in "Surveyor", with: @site_appraisal.surveyor
    fill_in "Utilities", with: @site_appraisal.utilities
    click_on "Create Site appraisal"

    assert_text "Site appraisal was successfully created"
    click_on "Back"
  end

  test "updating a Site appraisal" do
    visit site_appraisals_url
    click_on "Edit", match: :first

    fill_in "Address", with: @site_appraisal.address
    fill_in "Building survey", with: @site_appraisal.building_survey
    fill_in "Cost of sales as percentage of turnover", with: @site_appraisal.cost_of_sales_as_percentage_of_turnover
    fill_in "Designs", with: @site_appraisal.designs
    fill_in "Estimated total wages", with: @site_appraisal.estimated_total_wages
    fill_in "Fit out", with: @site_appraisal.fit_out
    fill_in "Fixed or rising", with: @site_appraisal.fixed_or_rising
    fill_in "Insurance", with: @site_appraisal.insurance
    fill_in "Lease length", with: @site_appraisal.lease_length
    fill_in "Legal fees", with: @site_appraisal.legal_fees
    fill_in "Members of staff", with: @site_appraisal.members_of_staff
    fill_in "Planning application", with: @site_appraisal.planning_application
    fill_in "Projections", with: @site_appraisal.projections
    fill_in "Rateable value", with: @site_appraisal.rateable_value
    fill_in "Rent", with: @site_appraisal.rent
    fill_in "Rent free", with: @site_appraisal.rent_free
    fill_in "Service charge", with: @site_appraisal.service_charge
    fill_in "Stamp duty", with: @site_appraisal.stamp_duty
    fill_in "Surveyor", with: @site_appraisal.surveyor
    fill_in "Utilities", with: @site_appraisal.utilities
    click_on "Update Site appraisal"

    assert_text "Site appraisal was successfully updated"
    click_on "Back"
  end

  test "destroying a Site appraisal" do
    visit site_appraisals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site appraisal was successfully destroyed"
  end
end
