package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
   content "<h1>Hello, Trey! You aren't paying attention to my Jabber messages so you probably will never see these changes.</h1>"
end

service 'httpd' do
   action [ :enable, :start]
end 
