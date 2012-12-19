application "turbine" do
  path "/opt/turbine"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/apps/turbine/turbine-web/build/libs/turbine-web-0.1-SNAPSHOT.war"
  revision "3"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end

file "/var/lib/tomcat6/shared/turbine-config.jar" do
  content IO.read("/apps/turbine-config/build/libs/turbine-config.jar")
  notifies :restart, "service[tomcat]"
end