application "hystrix-dashboard" do
  path "/opt/hystrix-dashboard"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/war/hystrix-dashboard-1.1.7-SNAPSHOT.war"
  revision "2"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end