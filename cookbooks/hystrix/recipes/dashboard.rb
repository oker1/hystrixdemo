application "hystrix-dashboard" do
  path "/opt/hystrix-dashboard"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/apps/dashboard/build/libs/hystrix-dashboard-1.1.5.war"
  revision "2"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end