[app/sources/234451756.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:cb8568b706a6ccf5716e3f8b9664b1dc2eb55c2223f32efa0cdf9678a14b792e" [label="/bin/sh -c apk --update --no-cache add \t\tbash \t\tpy-pip \t\tpostgresql-dev  \t\tpostgresql \t\tpython-dev \t\tmusl-dev \t\tgcc \t\tgit" shape="box"];
  "sha256:21938829500077ae690af864bc90e7f9ea0521848cdca8c7090b35dd2e070e00" [label="https://raw.githubusercontent.com/CanalTP/kirin/master/requirements.txt" shape="ellipse"];
  "sha256:aedc7b86cdd312bc7055c2f5c8fbb375a984cbfd4b3fed619f36a1e2326c0a3c" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:9c732e5607709a1b02df180b6bd65dc23c9687febbb06c7c6e3bfe6d84bb58cd" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:70dbebfb987361c91a6d28e0e1e1f02ef1e880c84fdc7e988dba7ad666d6f283" [label="/bin/sh -c pip install\t-r requirements.txt" shape="box"];
  "sha256:aea617b67a2257a3e6c257a500a238890706b0d7e5ce36abeebbc8d55ed45ed6" [label="sha256:aea617b67a2257a3e6c257a500a238890706b0d7e5ce36abeebbc8d55ed45ed6" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:cb8568b706a6ccf5716e3f8b9664b1dc2eb55c2223f32efa0cdf9678a14b792e" [label=""];
  "sha256:cb8568b706a6ccf5716e3f8b9664b1dc2eb55c2223f32efa0cdf9678a14b792e" -> "sha256:aedc7b86cdd312bc7055c2f5c8fbb375a984cbfd4b3fed619f36a1e2326c0a3c" [label=""];
  "sha256:21938829500077ae690af864bc90e7f9ea0521848cdca8c7090b35dd2e070e00" -> "sha256:aedc7b86cdd312bc7055c2f5c8fbb375a984cbfd4b3fed619f36a1e2326c0a3c" [label=""];
  "sha256:aedc7b86cdd312bc7055c2f5c8fbb375a984cbfd4b3fed619f36a1e2326c0a3c" -> "sha256:9c732e5607709a1b02df180b6bd65dc23c9687febbb06c7c6e3bfe6d84bb58cd" [label=""];
  "sha256:9c732e5607709a1b02df180b6bd65dc23c9687febbb06c7c6e3bfe6d84bb58cd" -> "sha256:70dbebfb987361c91a6d28e0e1e1f02ef1e880c84fdc7e988dba7ad666d6f283" [label=""];
  "sha256:70dbebfb987361c91a6d28e0e1e1f02ef1e880c84fdc7e988dba7ad666d6f283" -> "sha256:aea617b67a2257a3e6c257a500a238890706b0d7e5ce36abeebbc8d55ed45ed6" [label=""];
}

