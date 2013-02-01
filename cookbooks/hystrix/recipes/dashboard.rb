application "hystrix-dashboard" do
  path "/opt/hystrix-dashboard"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/apps/hystrix/hystrix-dashboard/build/libs/hystrix-dashboard-1.2.5-SNAPSHOT.war"
  revision "3"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end