ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "http://arcane-garden-7729.herokuapp.com/",
  :user_name            => "kacyhulme",
  :password             => "scarletsax747",
  :authentication       => "plain",
  :enable_starttls_auto => true
}