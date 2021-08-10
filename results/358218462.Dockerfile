[app/sources/358218462.Dockerfile]
digraph {
  "sha256:342abca483fe0699bb2279a33a0a0468c02b87d211e227ed9249f11e57d2227d" [label="docker-image://docker.io/cloudbees/java-build-tools:latest" shape="ellipse"];
  "sha256:62296f4c5d870c0032677c8fcbb25d054c602c800bd94ee49f053323d4885b9b" [label="/bin/sh -c curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/$JENKINS_REMOTING_VERSION/remoting-$JENKINS_REMOTING_VERSION.jar   && chmod 755 /usr/share/jenkins   && chmod 644 /usr/share/jenkins/slave.jar" shape="box"];
  "sha256:c9a5ca1d286aefaf7f41b3a0ad5ab3783c3e43583a13d37891e571886a10c6de" [label="local://context" shape="ellipse"];
  "sha256:94ceed2df53df43231542df7db6013381e6dede86811d8883f7a38214f670fbc" [label="copy{src=/jenkins-slave, dest=/usr/local/bin/jenkins-slave}" shape="note"];
  "sha256:9d5c94e8105c6c5c8336e1e6a952dd4ed541cde9e04a9f3c1aa7ecf3813be070" [label="/bin/sh -c chmod a+rwx /home/jenkins" shape="box"];
  "sha256:44527b936a09c1436b53e10c09f1608d3d8a5a2603a13be70dd5cab3461f9575" [label="mkdir{path=/home/jenkins}" shape="note"];
  "sha256:8a4613b3f159fe751dbcfefa3a2a77c5394d16dbac082e21ac9e5fd724d1fc90" [label="sha256:8a4613b3f159fe751dbcfefa3a2a77c5394d16dbac082e21ac9e5fd724d1fc90" shape="plaintext"];
  "sha256:342abca483fe0699bb2279a33a0a0468c02b87d211e227ed9249f11e57d2227d" -> "sha256:62296f4c5d870c0032677c8fcbb25d054c602c800bd94ee49f053323d4885b9b" [label=""];
  "sha256:62296f4c5d870c0032677c8fcbb25d054c602c800bd94ee49f053323d4885b9b" -> "sha256:94ceed2df53df43231542df7db6013381e6dede86811d8883f7a38214f670fbc" [label=""];
  "sha256:c9a5ca1d286aefaf7f41b3a0ad5ab3783c3e43583a13d37891e571886a10c6de" -> "sha256:94ceed2df53df43231542df7db6013381e6dede86811d8883f7a38214f670fbc" [label=""];
  "sha256:94ceed2df53df43231542df7db6013381e6dede86811d8883f7a38214f670fbc" -> "sha256:9d5c94e8105c6c5c8336e1e6a952dd4ed541cde9e04a9f3c1aa7ecf3813be070" [label=""];
  "sha256:9d5c94e8105c6c5c8336e1e6a952dd4ed541cde9e04a9f3c1aa7ecf3813be070" -> "sha256:44527b936a09c1436b53e10c09f1608d3d8a5a2603a13be70dd5cab3461f9575" [label=""];
  "sha256:44527b936a09c1436b53e10c09f1608d3d8a5a2603a13be70dd5cab3461f9575" -> "sha256:8a4613b3f159fe751dbcfefa3a2a77c5394d16dbac082e21ac9e5fd724d1fc90" [label=""];
}

