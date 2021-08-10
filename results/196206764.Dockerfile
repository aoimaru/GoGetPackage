[app/sources/196206764.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:aad3b6d8be9c87611baa9b7c2b9d2f31f330b32e855661112eddacf19aab39b9" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         apt-utils         ca-certificates         curl         apt-transport-https         locales         git     && apt-get clean" shape="box"];
  "sha256:b5537a908b240c6cdae5757bee41d1179ac46bb7dc3b852a70942d64519d1ae2" [label="/bin/sh -c locale-gen $LANG && update-locale" shape="box"];
  "sha256:5915d656e86f40f38c4e9ecac14c1d5625c1ab00d962ac2be3a9644c34fcc305" [label="/bin/sh -c curl -L -o $PACKAGENAME $PACKAGELOCATION/$PACKAGENAME" shape="box"];
  "sha256:8634ebdc01c3b9dee24b9c6d26bbbbf0d9f531303f97849f5d638a9d643a3d10" [label="/bin/sh -c dpkg -i $PACKAGENAME || :" shape="box"];
  "sha256:d277e716a26b54c455d95553bff865dee0dd4e9860288861d31e26301c8d6b5e" [label="/bin/sh -c apt-get install -y -f --no-install-recommends" shape="box"];
  "sha256:3231e21634834849bb3513a4a9e3dfa21b2a6cd4ad8f85342c32e338b9fa5bf7" [label="/bin/sh -c $TESTDOWNLOADCOMMAND" shape="box"];
  "sha256:fd86a9f35b64328cd708efcddb83277d0a52ae6257e4089de956fbb3f20a80c4" [label="/bin/sh -c pwsh$PREVIEWSUFFIX -c \"Import-Module /PowerShell/build.psm1;\\$dir='/usr/local/share/powershell/Modules';\\$null=New-Item -Type Directory -Path \\$dir -ErrorAction SilentlyContinue;Restore-PSPester -Destination \\$dir;exit (Invoke-Pester $TESTLIST -PassThru).FailedCount\"" shape="box"];
  "sha256:a9aaf69b30894b8cfcba6b28f91b21cb189964d38a2bec7bd40ab8b6124ed9aa" [label="sha256:a9aaf69b30894b8cfcba6b28f91b21cb189964d38a2bec7bd40ab8b6124ed9aa" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:aad3b6d8be9c87611baa9b7c2b9d2f31f330b32e855661112eddacf19aab39b9" [label=""];
  "sha256:aad3b6d8be9c87611baa9b7c2b9d2f31f330b32e855661112eddacf19aab39b9" -> "sha256:b5537a908b240c6cdae5757bee41d1179ac46bb7dc3b852a70942d64519d1ae2" [label=""];
  "sha256:b5537a908b240c6cdae5757bee41d1179ac46bb7dc3b852a70942d64519d1ae2" -> "sha256:5915d656e86f40f38c4e9ecac14c1d5625c1ab00d962ac2be3a9644c34fcc305" [label=""];
  "sha256:5915d656e86f40f38c4e9ecac14c1d5625c1ab00d962ac2be3a9644c34fcc305" -> "sha256:8634ebdc01c3b9dee24b9c6d26bbbbf0d9f531303f97849f5d638a9d643a3d10" [label=""];
  "sha256:8634ebdc01c3b9dee24b9c6d26bbbbf0d9f531303f97849f5d638a9d643a3d10" -> "sha256:d277e716a26b54c455d95553bff865dee0dd4e9860288861d31e26301c8d6b5e" [label=""];
  "sha256:d277e716a26b54c455d95553bff865dee0dd4e9860288861d31e26301c8d6b5e" -> "sha256:3231e21634834849bb3513a4a9e3dfa21b2a6cd4ad8f85342c32e338b9fa5bf7" [label=""];
  "sha256:3231e21634834849bb3513a4a9e3dfa21b2a6cd4ad8f85342c32e338b9fa5bf7" -> "sha256:fd86a9f35b64328cd708efcddb83277d0a52ae6257e4089de956fbb3f20a80c4" [label=""];
  "sha256:fd86a9f35b64328cd708efcddb83277d0a52ae6257e4089de956fbb3f20a80c4" -> "sha256:a9aaf69b30894b8cfcba6b28f91b21cb189964d38a2bec7bd40ab8b6124ed9aa" [label=""];
}

