class Profile < ActiveRecord::Base
	belongs_to :user

	validate :first_name_and_last_name_not_be_null_both, :prevents_anyone_that_is_male_from_having_the_first_name_sue

	validates :gender, inclusion: {in: ["male", "female"]}

  	def first_name_and_last_name_not_be_null_both
  		if first_name == nil && last_name == nil 
  			errors.add(:first_name, "Cannot be nil!")
		end
	end

	def prevents_anyone_that_is_male_from_having_the_first_name_sue
		if(first_name == "Sue" && gender == "male")
			errors.add(:first_name, "First name cannot be 'Sue'!")
		end
	end

	def self.get_all_profiles(min, max)
		return Profile.all.where("birth_year between ? and ?", min, max).order(birth_year: :ASC)
	end
end
