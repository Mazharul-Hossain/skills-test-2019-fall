# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  dob        :date
#  first_name :string
#  job_title  :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employee < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :dob, presence: true
    validates :job_title, presence: true
end
