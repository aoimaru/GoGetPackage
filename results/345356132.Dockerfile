[app/sources/345356132.Dockerfile]
digraph {
  "sha256:21b13bcda396e8ff2ef09a2dab41771afc44b1d3b54ecef4ef83d65ae998df78" [label="docker-image://docker.io/balenalib/armv7hf-debian:buster-run@sha256:2c358709c0ee12ba9151c93d2b0de1d3d1b0fa3975c11bc72bbc170c09733b85" shape="ellipse"];
  "sha256:157c52bcf1b5c73aab3761aff3ed88402fe72ea7b8999514c40ec1ecfcf512d4" [label="/bin/sh -c echo \"deb [arch=armhf] http://repos.rcn-ee.net/debian/ buster main\" >> /etc/apt/sources.list \t&& apt-key adv --batch --keyserver keyserver.ubuntu.com --recv-key D284E608A4C46402" shape="box"];
  "sha256:5b07748c4c542ee12c3f65066c6a6e402ce2491c9509c2d0f44c731bccc00c84" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1a8aa5443b15aa2dab34347bfbe87002eaac5cfcbe068eb7e1f68dddeb802172" [label="sha256:1a8aa5443b15aa2dab34347bfbe87002eaac5cfcbe068eb7e1f68dddeb802172" shape="plaintext"];
  "sha256:21b13bcda396e8ff2ef09a2dab41771afc44b1d3b54ecef4ef83d65ae998df78" -> "sha256:157c52bcf1b5c73aab3761aff3ed88402fe72ea7b8999514c40ec1ecfcf512d4" [label=""];
  "sha256:157c52bcf1b5c73aab3761aff3ed88402fe72ea7b8999514c40ec1ecfcf512d4" -> "sha256:5b07748c4c542ee12c3f65066c6a6e402ce2491c9509c2d0f44c731bccc00c84" [label=""];
  "sha256:5b07748c4c542ee12c3f65066c6a6e402ce2491c9509c2d0f44c731bccc00c84" -> "sha256:1a8aa5443b15aa2dab34347bfbe87002eaac5cfcbe068eb7e1f68dddeb802172" [label=""];
}

