```
bundle install

git submodule update --init --recursive
gradle -b apps/hystrix/hystrix-dashboard/build.gradle build
gradle -b apps/geoipservice/build.gradle build
gradle -b apps/turbine/build.gradle turbine-core:jar turbine-web:war
gradle -b apps/turbine-config/build.gradle build

bundle exec vagrant up
```

http://33.33.33.10:8080/hystrix-dashboard/monitor/monitor.html?stream=http%3A%2F%2F33.33.33.10%3A8080%2Fturbine%2Fturbine.stream
