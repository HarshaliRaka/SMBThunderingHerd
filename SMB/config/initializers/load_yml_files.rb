app_config = YAML.load(ERB.new(File.read("#{Rails.root}/config/app_urls.yml")).result)[Rails.env]
SEND_MAIL_EMPL_URL = app_config['send_mail_empl_url'] 
SEND_MAIL_DEBT_URL = app_config['send_mail_debt_url'] 

