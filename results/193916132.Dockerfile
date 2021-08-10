[app/sources/193916132.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:625dbca16fee1e333bfa71b5f9b073b1ec5ce3760833da63f4ef57d2a0f7932f" [label="/bin/sh -c apt-get -y update && apt-get -y install ruby" shape="box"];
  "sha256:926e5adcad539239eb3a55125625f1bf2052e528cec405d031a677dd0f52d2c1" [label="/bin/sh -c apt-get install -y puppet" shape="box"];
  "sha256:5d97b5488a504572f301b9345fb279b972c99b11b3750dc4c41c6a9cdb165437" [label="local://context" shape="ellipse"];
  "sha256:4301c7b31e064749419eb70f376582a393bb8fed2fe4eb96f0d07d222ac63ead" [label="copy{src=/directorymanifest.pp, dest=/tmp/manifest.pp}" shape="note"];
  "sha256:13da9d2e1522066061a027f7c5dcb16cc8996e4e8efb647764ff09ef1fee1c46" [label="/bin/sh -c puppet apply /tmp/manifest.pp" shape="box"];
  "sha256:21b69377c828e74d9ca29ebcf75b4f34d28253628318286b087140917d1768ab" [label="sha256:21b69377c828e74d9ca29ebcf75b4f34d28253628318286b087140917d1768ab" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:625dbca16fee1e333bfa71b5f9b073b1ec5ce3760833da63f4ef57d2a0f7932f" [label=""];
  "sha256:625dbca16fee1e333bfa71b5f9b073b1ec5ce3760833da63f4ef57d2a0f7932f" -> "sha256:926e5adcad539239eb3a55125625f1bf2052e528cec405d031a677dd0f52d2c1" [label=""];
  "sha256:926e5adcad539239eb3a55125625f1bf2052e528cec405d031a677dd0f52d2c1" -> "sha256:4301c7b31e064749419eb70f376582a393bb8fed2fe4eb96f0d07d222ac63ead" [label=""];
  "sha256:5d97b5488a504572f301b9345fb279b972c99b11b3750dc4c41c6a9cdb165437" -> "sha256:4301c7b31e064749419eb70f376582a393bb8fed2fe4eb96f0d07d222ac63ead" [label=""];
  "sha256:4301c7b31e064749419eb70f376582a393bb8fed2fe4eb96f0d07d222ac63ead" -> "sha256:13da9d2e1522066061a027f7c5dcb16cc8996e4e8efb647764ff09ef1fee1c46" [label=""];
  "sha256:13da9d2e1522066061a027f7c5dcb16cc8996e4e8efb647764ff09ef1fee1c46" -> "sha256:21b69377c828e74d9ca29ebcf75b4f34d28253628318286b087140917d1768ab" [label=""];
}

