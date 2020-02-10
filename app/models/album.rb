# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  artist     :string
#  title      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ApplicationRecord
end
