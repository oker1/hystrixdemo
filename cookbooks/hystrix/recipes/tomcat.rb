include_recipe "apt"
include_recipe "tomcat"

file "/var/lib/tomcat6/conf/tomcat-users.xml" do
	action :create
	owner node["tomcat"]["user"]
	group node["tomcat"]["group"]
	mode "0600"
	notifies :restart, "service[tomcat]", :immediately
	content <<-EOS
<?xml version='1.0' encoding='utf-8'?>
<tomcat-users>
  <role rolename="tomcat"/>
  <user username="tomcat" password="tomcat" roles="tomcat,manager-gui"/>
</tomcat-users>
EOS
end
