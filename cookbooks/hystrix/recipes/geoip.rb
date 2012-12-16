application "geoip" do
  path "/opt/geoip"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/war/geoipservice.war"
  revision "1"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end