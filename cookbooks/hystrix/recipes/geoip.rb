application "geoipservice" do
  path "/opt/geoipservice"
  owner node["tomcat"]["user"]
  group node["tomcat"]["group"]
  repository "/apps/geoipservice/build/libs/geoipservice.war"
  revision "1"
  strategy :java_local_file

  java_webapp do
  end

  tomcat
end

link "/usr/local/share/GeoIP" do
  to "/usr/share/GeoIP"
end
