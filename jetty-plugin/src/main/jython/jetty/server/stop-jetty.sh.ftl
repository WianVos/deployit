echo Stopping Jetty ...
sudo ${container.home}/stop.sh
echo Stop command returned $?
touch ${container.home}/stopped_by_deployit