# frozen_string_literal: true

json.extract! listing, :id, :company_name, :short_description, :long_description, :requirement,
              :top_three_target_locations, :size_guide, :budget, :created_at, :updated_at
json.url listing_url(listing, format: :json)
