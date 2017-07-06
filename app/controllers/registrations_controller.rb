class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(
			:email,
			:password,
			:password_confirmation
			)
		
	end

	def account_update_params
		params.require(:user).permit(
			:email,
			:password,
			:password_confirmation,
			:current_password
			)
			redirect_to edit_user_registration_path
	end
end