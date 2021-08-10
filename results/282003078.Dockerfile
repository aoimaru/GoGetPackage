[app/sources/282003078.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:53d53802725fdb947827056fac1c1458ec20af09b79787be51e18fe7537439a0" [label="/bin/sh -c apk --no-cache add unzip" shape="box"];
  "sha256:0276183ced7fda0c39b41ae4fb1635f2708275b97a995a89bc51143fb9e4661e" [label="local://context" shape="ellipse"];
  "sha256:e623f577cf209eb98d8e34da4e7167aaf0aedf3d5340b5df700687e2647c8b99" [label="copy{src=/AppServerAgent-.zip, dest=/}" shape="note"];
  "sha256:c36638c188285fb87bcfcdc930bc45a1bd62780251117865cade15c97f61c519" [label="/bin/sh -c if [ \"x${APPD_AGENT_SHA256}\" != \"x\" ]; then  echo \"${APPD_AGENT_SHA256} *AppServerAgent-${APPD_AGENT_VERSION}.zip\" >> appd_checksum     && sha256sum -c appd_checksum     && rm appd_checksum     && unzip -oq AppServerAgent-${APPD_AGENT_VERSION}.zip -d /tmp;    else      unzip -oq AppServerAgent-${APPD_AGENT_VERSION}.zip -d /tmp;    fi" shape="box"];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" [label="docker-image://docker.io/library/openjdk:8-jre-alpine" shape="ellipse"];
  "sha256:6d5953f7017276c2c279bf772ac5fd812b03fa810be8e9dea2544a45cab03bc0" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:64081062cd048c2bba9d3826edbdc2a09b25ada2b3e00eb881d6651df75bf122" [label="copy{src=/tmp, dest=/opt/appdynamics}" shape="note"];
  "sha256:bdc442b01946bc4fc2b022867b4e8fe4e23f8946af82df7ae89f9616d5117864" [label="sha256:bdc442b01946bc4fc2b022867b4e8fe4e23f8946af82df7ae89f9616d5117864" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:53d53802725fdb947827056fac1c1458ec20af09b79787be51e18fe7537439a0" [label=""];
  "sha256:53d53802725fdb947827056fac1c1458ec20af09b79787be51e18fe7537439a0" -> "sha256:e623f577cf209eb98d8e34da4e7167aaf0aedf3d5340b5df700687e2647c8b99" [label=""];
  "sha256:0276183ced7fda0c39b41ae4fb1635f2708275b97a995a89bc51143fb9e4661e" -> "sha256:e623f577cf209eb98d8e34da4e7167aaf0aedf3d5340b5df700687e2647c8b99" [label=""];
  "sha256:e623f577cf209eb98d8e34da4e7167aaf0aedf3d5340b5df700687e2647c8b99" -> "sha256:c36638c188285fb87bcfcdc930bc45a1bd62780251117865cade15c97f61c519" [label=""];
  "sha256:9ed31df4e6731a1718ea93bfa77354ad1ea2d1625c1cb16e2087d16d0b84bd00" -> "sha256:6d5953f7017276c2c279bf772ac5fd812b03fa810be8e9dea2544a45cab03bc0" [label=""];
  "sha256:6d5953f7017276c2c279bf772ac5fd812b03fa810be8e9dea2544a45cab03bc0" -> "sha256:64081062cd048c2bba9d3826edbdc2a09b25ada2b3e00eb881d6651df75bf122" [label=""];
  "sha256:c36638c188285fb87bcfcdc930bc45a1bd62780251117865cade15c97f61c519" -> "sha256:64081062cd048c2bba9d3826edbdc2a09b25ada2b3e00eb881d6651df75bf122" [label=""];
  "sha256:64081062cd048c2bba9d3826edbdc2a09b25ada2b3e00eb881d6651df75bf122" -> "sha256:bdc442b01946bc4fc2b022867b4e8fe4e23f8946af82df7ae89f9616d5117864" [label=""];
}

