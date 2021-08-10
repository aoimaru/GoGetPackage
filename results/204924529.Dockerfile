[app/sources/204924529.Dockerfile]
digraph {
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" [label="docker-image://registry.access.redhat.com/rhel7/rhel:latest" shape="ellipse"];
  "sha256:71adfe5b1b6706257619b7bd139aa8ac1db9f20ae59f0b8398b5c4a3ea16fe92" [label="local://context" shape="ellipse"];
  "sha256:b19a85078fb59f3e36ffe813690579bec0f1b023eedbc81c470c287fad7262a5" [label="copy{src=/solo.json.erb, dest=/var/chef/solo.json.erb}" shape="note"];
  "sha256:7d5061aaaa8aaf68eb08353c69d645a61118ffda76ed1fd648924502313fcb5d" [label="/bin/sh -c curl -L https://www.getchef.com/chef/install.sh | bash     && /opt/chef/embedded/bin/erb /var/chef/solo.json.erb > /var/chef/solo.json     && chef-solo        --node_name nexus_repository_red_hat_docker_build        --recipe-url ${NEXUS_REPOSITORY_MANAGER_COOKBOOK_URL}        --json-attributes /var/chef/solo.json     && rpm -qa *chef* | xargs rpm -e     && rpm --rebuilddb     && rm -rf /etc/chef     && rm -rf /opt/chefdk     && rm -rf /var/cache/yum     && rm -rf /var/chef" shape="box"];
  "sha256:ba3e4af65180d4cbae1ff4967004da342db9de59af8b85cfb63c044f9d87d2ee" [label="sha256:ba3e4af65180d4cbae1ff4967004da342db9de59af8b85cfb63c044f9d87d2ee" shape="plaintext"];
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" -> "sha256:b19a85078fb59f3e36ffe813690579bec0f1b023eedbc81c470c287fad7262a5" [label=""];
  "sha256:71adfe5b1b6706257619b7bd139aa8ac1db9f20ae59f0b8398b5c4a3ea16fe92" -> "sha256:b19a85078fb59f3e36ffe813690579bec0f1b023eedbc81c470c287fad7262a5" [label=""];
  "sha256:b19a85078fb59f3e36ffe813690579bec0f1b023eedbc81c470c287fad7262a5" -> "sha256:7d5061aaaa8aaf68eb08353c69d645a61118ffda76ed1fd648924502313fcb5d" [label=""];
  "sha256:7d5061aaaa8aaf68eb08353c69d645a61118ffda76ed1fd648924502313fcb5d" -> "sha256:ba3e4af65180d4cbae1ff4967004da342db9de59af8b85cfb63c044f9d87d2ee" [label=""];
}

