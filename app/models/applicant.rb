# == Schema Information
#
# Table name: applicants
#
#  id                        :integer          not null, primary key
#  first_name                :string           not null
#  last_name                 :string           not null
#  email                     :string
#  phone_number              :string
#  work_authorized           :boolean
#  authorization_status      :string
#  linkedin_url              :string
#  website_url               :string
#  referral                  :string
#  gender                    :string
#  ethnicity                 :string
#  veteran_status            :string
#  disability_status         :string
#  resume_file_name          :string
#  resume_content_type       :string
#  resume_file_size          :integer
#  resume_updated_at         :datetime
#  cover_letter_file_name    :string
#  cover_letter_content_type :string
#  cover_letter_file_size    :integer
#  cover_letter_updated_at   :datetime
#  job_posting_id            :integer          not null
#  slug                      :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

class Applicant < ApplicationRecord
  extend FriendlyId

  friendly_id :first_name, use: :slugged
  belongs_to  :job_posting, counter_cache: true
  # has_attached_file :resume

  # validates_presence_of :first_name
  # validates_presence_of :last_name
  # validates_presence_of :email
  # validates_attachment :resume, presence: true, content_type: { content_type:"application/pdf" }
end
