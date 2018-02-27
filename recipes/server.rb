package 'httpd' do
   action :install
end

remote_file '/var/www/html/geralt.png' do
   source 'https://vignette.wikia.nocookie.net/witcher/images/a/a0/Tw3_Geralt_of_Rivia_newest_render.png/revision/latest?cb=20170606064646'
end

template 'var/www/html/index.html' do
   source 'index.html.erb'
end

service 'httpd' do
   action [ :enable, :start]
end 
