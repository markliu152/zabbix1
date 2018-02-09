
package 'firewalld'    
service 'firewalld' do
  action [:enable, :start]
end

execute "set_firewalld" do       
  command <<-"EOH"
  firewall-cmd --permanent --add-port={80/tcp,10051/tcp}
  firewall-cmd --reload
  EOH
  action :run
end
