# Preview all emails at https://c46b58fb30974ab6983b73ea2ce88eae.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/account_activation
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at
  # https://c46b58fb30974ab6983b73ea2ce88eae.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at
  # https://c46b58fb30974ab6983b73ea2ce88eae.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/password_reset
  def password_reset
    UserMailer.password_reset
  end
end