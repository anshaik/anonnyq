class ProfilesController < ApplicationController
	before_action :set_profile, only: [:edit]

	def new
		if !current_user.profile.blank?
			redirect_to dashboard_path
		else
			@profile = current_user.build_profile
		end
	end
	
	def create
		@profile = current_user.build_profile(profile_params)
		if @profile.save
			redirect_to dashboard_path, success: "Profile Successfully Created"
		else
			render :new
		end
	end	

	def edit
		
	end

	def update
		if current_user.profile.update(profile_params)
			redirect_to dashboard_path, success: "Profile Successfully Created"
		else
			render :new
		end
	end

	private

		def profile_params
			params.require(:profile)
			.permit(:referral, :first_name, :last_name, :phone,
			 :username, :age, :gender, :bio, :address1, :address2, :city, :state, :zip)
		end

		def set_profile
			@profile = current_user.profile || current_user.build_profile
		end
end