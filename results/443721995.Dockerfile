[app/sources/443721995.Dockerfile]
digraph {
  "sha256:3177ded3122663606735935d615f7cca4a6927fc1cc868e0c03111be5ea6faf7" [label="docker-image://docker.io/library/debian:squeeze" shape="ellipse"];
  "sha256:2b99991e65a073baa2bb5780d10e955eb4b5a252187e0e73f22336e125914640" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:76d09739971a80c820e2d9babe907a45e345d2523da4b388e071cf4c0ad0dc11" [label="/bin/sh -c apt-get -y install curl" shape="box"];
  "sha256:5f131d82219d392139bb705054f69d55ce1bc9e7459f5e5613eadd936ab5083b" [label="/bin/sh -c curl -L https://getchef.com/chef/install.sh | bash -s -- -v <%= version %> -P container" shape="box"];
  "sha256:52aff776c6a72fcd03077a05eee52744b471e59420a7120bc8d324f0e05ee630" [label="sha256:52aff776c6a72fcd03077a05eee52744b471e59420a7120bc8d324f0e05ee630" shape="plaintext"];
  "sha256:3177ded3122663606735935d615f7cca4a6927fc1cc868e0c03111be5ea6faf7" -> "sha256:2b99991e65a073baa2bb5780d10e955eb4b5a252187e0e73f22336e125914640" [label=""];
  "sha256:2b99991e65a073baa2bb5780d10e955eb4b5a252187e0e73f22336e125914640" -> "sha256:76d09739971a80c820e2d9babe907a45e345d2523da4b388e071cf4c0ad0dc11" [label=""];
  "sha256:76d09739971a80c820e2d9babe907a45e345d2523da4b388e071cf4c0ad0dc11" -> "sha256:5f131d82219d392139bb705054f69d55ce1bc9e7459f5e5613eadd936ab5083b" [label=""];
  "sha256:5f131d82219d392139bb705054f69d55ce1bc9e7459f5e5613eadd936ab5083b" -> "sha256:52aff776c6a72fcd03077a05eee52744b471e59420a7120bc8d324f0e05ee630" [label=""];
}

