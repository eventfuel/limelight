# == Schema Information
#
# Table name: job_postings
#
#  id                  :integer          not null, primary key
#  title               :string           not null
#  type                :string
#  description         :string
#  min_salary          :decimal(, )
#  years_of_experience :integer
#  team_id             :integer
#  company_id          :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class JobPosting < ApplicationRecord
  belongs_to  :company
  has_many    :applicants
end
