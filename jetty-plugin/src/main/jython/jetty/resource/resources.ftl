RESOURCE_FILE=${deployed.container.home}/etc/jetty-resources.xml

RemoveEmptyLines() {
  echo "Remove empty lines ..."
  sed -i '/^$/d' $RESOURCE_FILE
}

InsertResource() {
  echo "Insert configuration of ${deployed.name} into $RESOURCE_FILE ..."
  (head -n -1 $RESOURCE_FILE; cat ${step.remoteWorkingDirectory.path}/$1; tail -n -1 $RESOURCE_FILE) > $RESOURCE_FILE.tmp
  mv $RESOURCE_FILE.tmp $RESOURCE_FILE
}

RemoveResource() {
  echo "Remove configuration of ${deployed.name} from $RESOURCE_FILE ..."
  sed -i '/${deployed.name}:begin/,/${deployed.name}:end/d' $RESOURCE_FILE
}
