[app/sources/237625642.Dockerfile]
digraph {
  "sha256:425e0f5287d8b4ac13c313c9d08b61cdc9e785eeaa73f73ed44b1eb85dbf059a" [label="docker-image://docker.io/openshift/jenkins-2-centos7:v3.11" shape="ellipse"];
  "sha256:7a0603e790373a471bb513d94b4a80f34ea65da3ddd2c587f362afab05169742" [label="/bin/sh -c touch /opt/openshift/configuration/plugins.txt" shape="box"];
  "sha256:1c08b82039845f148d1925cea6454b8ef8d62e2548d8eac32381abaf2fa7b92f" [label="/bin/sh -c touch /opt/openshift/plugins/openshift-client-plugin.lock" shape="box"];
  "sha256:22fc12e8c0f850c1a9276d333d763ddef66b681ac1cb93328739b94e2ce29c5f" [label="local://context" shape="ellipse"];
  "sha256:9fcb9dcc148574231a7b0d62247d1043b3b9e8a2092668d8783af9e13d38f41a" [label="copy{src=/jpi, dest=/opt/openshift/plugins}" shape="note"];
  "sha256:936faf979e538d6b200d71c1511b7e11cdb0ffc54cac01602fc398dc18bbaad4" [label="/bin/sh -c /usr/local/bin/install-plugins.sh /opt/openshift/configuration/plugins.txt" shape="box"];
  "sha256:63b60190c876c34c0c8fd3ce7250102cc74ae750fc283ccad6233e337d0b47de" [label="sha256:63b60190c876c34c0c8fd3ce7250102cc74ae750fc283ccad6233e337d0b47de" shape="plaintext"];
  "sha256:425e0f5287d8b4ac13c313c9d08b61cdc9e785eeaa73f73ed44b1eb85dbf059a" -> "sha256:7a0603e790373a471bb513d94b4a80f34ea65da3ddd2c587f362afab05169742" [label=""];
  "sha256:7a0603e790373a471bb513d94b4a80f34ea65da3ddd2c587f362afab05169742" -> "sha256:1c08b82039845f148d1925cea6454b8ef8d62e2548d8eac32381abaf2fa7b92f" [label=""];
  "sha256:1c08b82039845f148d1925cea6454b8ef8d62e2548d8eac32381abaf2fa7b92f" -> "sha256:9fcb9dcc148574231a7b0d62247d1043b3b9e8a2092668d8783af9e13d38f41a" [label=""];
  "sha256:22fc12e8c0f850c1a9276d333d763ddef66b681ac1cb93328739b94e2ce29c5f" -> "sha256:9fcb9dcc148574231a7b0d62247d1043b3b9e8a2092668d8783af9e13d38f41a" [label=""];
  "sha256:9fcb9dcc148574231a7b0d62247d1043b3b9e8a2092668d8783af9e13d38f41a" -> "sha256:936faf979e538d6b200d71c1511b7e11cdb0ffc54cac01602fc398dc18bbaad4" [label=""];
  "sha256:936faf979e538d6b200d71c1511b7e11cdb0ffc54cac01602fc398dc18bbaad4" -> "sha256:63b60190c876c34c0c8fd3ce7250102cc74ae750fc283ccad6233e337d0b47de" [label=""];
}

