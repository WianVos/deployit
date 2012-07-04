rm --force ${deployed.warTargetDirectory}/${step.artifact.name}
rm --force ${deployed.ctxTargetDirectory}/${deployed.startingWeight}-${step.artifact.name}.xml

TMPDIR="${deployed.container.home}/tmp/${step.artifact.name}"
USER="deployit"

<#noparse>
echo Setting ownership to: ${USER}
sudo chown ${USER}:${USER} ${TMPDIR}

echo Removing temp dir: ${TMPDIR}
rm --recursive --force ${TMPDIR}
</#noparse>
