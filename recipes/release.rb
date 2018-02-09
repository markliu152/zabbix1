
execute "install_zabbix_release" do
  command <<-"EOH"
    rpm -ivh http://repo.zabbix.com/zabbix/3.4/rhel/7/x86_64/zabbix-release-3.4-2.el7.noarch.rpm 
  EOH
  action :run
  not_if { ::File.exists?("/etc/yum.repos.d/zabbix.repo") }
end
