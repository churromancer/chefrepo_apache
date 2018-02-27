package 'httpd' do
   action :install
end

template '/var/www/html/index.html' do
   source 'index.html.erb'
   variables(
      :name => 'John Doe'
   )
end

service 'httpd' do
   action [ :enable, :start]
end 
