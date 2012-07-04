cp ${step.uploadedArtifactPath} ${deployed.warTargetDirectory}
cp ${step.remoteWorkingDirectory.path}/context.xml ${deployed.ctxTargetDirectory}/${deployed.startingWeight}-${step.artifact.name}.xml

TMPDIR="${deployed.container.home}/tmp/${step.artifact.name}"
USER=`ls -l ${deployed.container.home}/start.sh | awk '{ print $3 }'`

<#noparse>
echo Creating temp dir: ${TMPDIR}
mkdir -p ${TMPDIR}

echo Setting ownership to: ${USER}
sudo chown ${USER}:${USER} ${TMPDIR}
</#noparse>