application "turbine" do
  path "/opt/turbine"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/war/turbine-web-0.1-SNAPSHOT.war"
  revision "3"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end
