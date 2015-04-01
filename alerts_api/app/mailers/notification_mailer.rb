##
# Mailer methods can be defined using the simple format:
#
# email :registration_email do |name, user|
#   from 'admin@site.com'
#   to   user.email
#   subject 'Welcome to the site!'
#   locals  :name => name
#   content_type 'text/html'       # optional, defaults to plain/text
#   via     :sendmail              # optional, to smtp if defined, otherwise sendmail
#   render  'registration_email'
# end
#
# You can set the default delivery settings from your app through:
#
#   set :delivery_method, :smtp => {
#     :address         => 'smtp.yourserver.com',
#     :port            => '25',
#     :user_name       => 'user',
#     :password        => 'pass',
#     :authentication  => :plain, # :plain, :login, :cram_md5, no auth by default
#     :domain          => "localhost.localdomain" # the HELO domain provided by the client to the server
#   }
#
# or sendmail (default):
#
#   set :delivery_method, :sendmail
#
# or for tests:
#
#   set :delivery_method, :test
#
# or storing emails locally:
#
#   set :delivery_method, :file => {
#     :location => "#{Padrino.root}/tmp/emails",
#   }
#
# and then all delivered mail will use these settings unless otherwise specified.
#

AlertsApi::App.mailer :notification_mailer do
defaults :content_type => 'html'

email :send_notification_payslip do |obj|
  to obj[:to]
  subject obj[:subject]
  locals :employee => obj[:employee],:month => obj[:month],:payroll => obj['payroll']
  render 'send_notification_payslip'
  via :smtp
end

email :send_notification_taxslip do |obj|
  to obj[:to]
  subject obj[:subject]
  locals :employee => obj[:employee],:payroll => obj['payroll']
  render 'send_notification_taxslip'
  via :smtp
end

email :send_notification_savetax do |obj|
  to obj[:to]
  subject obj[:subject]
  locals :employee => obj[:employee],:savetax => obj['savetax']
  render 'send_notification_savetax'
  via :smtp
end


end
