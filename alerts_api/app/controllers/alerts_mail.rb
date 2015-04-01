AlertsApi::App.controllers :alerts_mail do

  post :send_notification, :provides => [:json] do
    data = request.body.read
    params = JSON.parse(data)
    p "------------------------------"
    p params
    p "------------------------------"
    begin
    email do
     from "thunderingherdhacksmb@gmail.com"
     to params['to']
     subject params['subject']
     locals :obj => params
     body render("alerts_mail/#{params['template_name']}")
     content_type :html
     via :smtp
    end
    #TODO: DB Logging: taran, Redis enque deque, cron job(whenever)
    return ""
    rescue Exception => e
      logger.info e.message
      logger.info "SOME EXCEPTION OCCURRED WHILE SENDING MAIL"
      logger.info e.backtrace.inspect
    end
  end




end
