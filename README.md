//to run any of the rails commands on windows append jruby -S to the start of the command

Clone the git repo
Install jre(6 and above)
Install jruby(1.7.9)
Install rails
Install mysql-server (username: root , password : root)
Use the DB dump provided (mysql -u root -p root thunder < thunder.sql)
or you can do rake db:migrate to migrate DB tables.
bundle install (in SMB folder)
rails s -p4000

go to alerts_api folder
bundle install
padrino s

In browser:
localhost:4000/ will open the home page. Whenever home page is hit, you'll see list of top 10 items sold in India
You can add employees(provide your actual email address to receive email )
You can see all employees

Currently, we have a scheduler which will send emails to all employees (savetax, payslip and taxslip)

In case you wish to receive mail immediately, hit localhost:4000/mail/save_tax , localhost:4000/mail/payslip and localhost:4000/mail/taxslip respectively.
