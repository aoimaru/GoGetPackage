[app/sources/366351651.Dockerfile]
digraph {
  "sha256:77d02a01877118f8e20005a01391d54ebe6a06a8ada8835374b4ffc55f29ac60" [label="docker-image://docker.io/lsiobase/nginx:3.9" shape="ellipse"];
  "sha256:493ecf8dcadef0fd9e07c1dfb606a6ff6fcf46822e1971cf63b799870054c818" [label="/bin/sh -c echo \"**** install package ****\" &&  apk add --no-cache \texpect \tjq \topenssh-client \tphp7-ldap \tphp7-zip &&  echo \"**** Tag this image with current version ****\" &&  if [ -z ${CODIAD_COMMIT+x} ]; then \tCODIAD_COMMIT=$(curl -sX GET https://api.github.com/repos/Codiad/Codiad/commits/master \t| jq -r '. | .sha');  fi &&  echo ${CODIAD_COMMIT} > /version.txt" shape="box"];
  "sha256:67c63ee3a5022cdad75295176600f2e911f07526c60584f27aba49f68b98372c" [label="local://context" shape="ellipse"];
  "sha256:87c08f38d3c98aabcf471804cc274103f27cfe4ab9dca733663499c720ca12b4" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:b6482ccba0e48de402b4c25ea726a54c29c8e49cee042ce1ac12720199fccd8a" [label="sha256:b6482ccba0e48de402b4c25ea726a54c29c8e49cee042ce1ac12720199fccd8a" shape="plaintext"];
  "sha256:77d02a01877118f8e20005a01391d54ebe6a06a8ada8835374b4ffc55f29ac60" -> "sha256:493ecf8dcadef0fd9e07c1dfb606a6ff6fcf46822e1971cf63b799870054c818" [label=""];
  "sha256:493ecf8dcadef0fd9e07c1dfb606a6ff6fcf46822e1971cf63b799870054c818" -> "sha256:87c08f38d3c98aabcf471804cc274103f27cfe4ab9dca733663499c720ca12b4" [label=""];
  "sha256:67c63ee3a5022cdad75295176600f2e911f07526c60584f27aba49f68b98372c" -> "sha256:87c08f38d3c98aabcf471804cc274103f27cfe4ab9dca733663499c720ca12b4" [label=""];
  "sha256:87c08f38d3c98aabcf471804cc274103f27cfe4ab9dca733663499c720ca12b4" -> "sha256:b6482ccba0e48de402b4c25ea726a54c29c8e49cee042ce1ac12720199fccd8a" [label=""];
}

