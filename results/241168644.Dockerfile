[app/sources/241168644.Dockerfile]
digraph {
  "sha256:418945999389e05bdcf6951a039386cb9792f24cee2756c897563a79573df0bc" [label="local://context" shape="ellipse"];
  "sha256:c3099cb74cdd5ac2390633cd12471b4afe0247787d81e03f7d18ae2b37282e83" [label="docker-image://docker.io/library/centos:6@sha256:dec8f471302de43f4cfcf82f56d99a5227b5ea1aa6d02fa56344986e1f4610e7" shape="ellipse"];
  "sha256:a72dc83bb2f77f015981cbbeee292f3169cd3593a7374e43ff29c6946a87ce8f" [label="/bin/sh -c yum install -y upstart initscripts" shape="box"];
  "sha256:4dc8e40ab8fd6907edd8c8613258963f702a9d82dc106f55f09f3b0ad06e72a2" [label="mkdir{path=/opt/cookbooks}" shape="note"];
  "sha256:407e9b938a2c1d07dd2a80621caa8e5f845695c9e339dbaeb86656e393635c4e" [label="/bin/sh -c curl -Lo windows.tar.gz https://supermarket.chef.io/cookbooks/windows/versions/4.3.4/download &&     tar -xzf windows.tar.gz" shape="box"];
  "sha256:f907505c383817202b9841437a5eeb0646634d02766e136390a299962c470d68" [label="/bin/sh -c yum install -y https://packages.chef.io/files/stable/chef/12.8.1/el/6/chef-12.8.1-1.el6.x86_64.rpm" shape="box"];
  "sha256:e9383a75c93b0eab7ebd7f8f0ab823e5f67ebe8ec304ef1e032de05c3f8f2b19" [label="copy{src=/tests/packaging/images/socat, dest=/bin/socat}" shape="note"];
  "sha256:73eebc832a09f33aa66f2651c0f8699cd27e884999d2499b71ff5659a1aa9037" [label="copy{src=/tests/packaging/images/certs/*.signalfx.com.*, dest=/}" shape="note"];
  "sha256:bfbd4e65215957b591543116f555ca9f0ff760c693fdf34aca54fd6328544414" [label="/bin/sh -c cat /*.cert >> /etc/pki/tls/certs/ca-bundle.crt" shape="box"];
  "sha256:58f8cf4c40a67544c18ba8335ccf4105464e3d669fa4dc839a263251d3703ca9" [label="copy{src=/tests/packaging/images/init-fake.conf, dest=/etc/init/fake-container-events.conf}" shape="note"];
  "sha256:9bfbb1f851813102a2ebd381db155eb27339887ff1e3b9c9e20bab18f66d8405" [label="copy{src=/deployments/chef, dest=/opt/cookbooks/signalfx_agent}" shape="note"];
  "sha256:dc39515b091c0d47e4cd80e000f583a9cce92106917233e5ed76102cb0a18077" [label="mkdir{path=/opt}" shape="note"];
  "sha256:22517d19a1f6ad9550c591b9ae50af3a45df38f40e90d151f55de8c2dd1ea9f2" [label="sha256:22517d19a1f6ad9550c591b9ae50af3a45df38f40e90d151f55de8c2dd1ea9f2" shape="plaintext"];
  "sha256:c3099cb74cdd5ac2390633cd12471b4afe0247787d81e03f7d18ae2b37282e83" -> "sha256:a72dc83bb2f77f015981cbbeee292f3169cd3593a7374e43ff29c6946a87ce8f" [label=""];
  "sha256:a72dc83bb2f77f015981cbbeee292f3169cd3593a7374e43ff29c6946a87ce8f" -> "sha256:4dc8e40ab8fd6907edd8c8613258963f702a9d82dc106f55f09f3b0ad06e72a2" [label=""];
  "sha256:4dc8e40ab8fd6907edd8c8613258963f702a9d82dc106f55f09f3b0ad06e72a2" -> "sha256:407e9b938a2c1d07dd2a80621caa8e5f845695c9e339dbaeb86656e393635c4e" [label=""];
  "sha256:407e9b938a2c1d07dd2a80621caa8e5f845695c9e339dbaeb86656e393635c4e" -> "sha256:f907505c383817202b9841437a5eeb0646634d02766e136390a299962c470d68" [label=""];
  "sha256:f907505c383817202b9841437a5eeb0646634d02766e136390a299962c470d68" -> "sha256:e9383a75c93b0eab7ebd7f8f0ab823e5f67ebe8ec304ef1e032de05c3f8f2b19" [label=""];
  "sha256:418945999389e05bdcf6951a039386cb9792f24cee2756c897563a79573df0bc" -> "sha256:e9383a75c93b0eab7ebd7f8f0ab823e5f67ebe8ec304ef1e032de05c3f8f2b19" [label=""];
  "sha256:e9383a75c93b0eab7ebd7f8f0ab823e5f67ebe8ec304ef1e032de05c3f8f2b19" -> "sha256:73eebc832a09f33aa66f2651c0f8699cd27e884999d2499b71ff5659a1aa9037" [label=""];
  "sha256:418945999389e05bdcf6951a039386cb9792f24cee2756c897563a79573df0bc" -> "sha256:73eebc832a09f33aa66f2651c0f8699cd27e884999d2499b71ff5659a1aa9037" [label=""];
  "sha256:73eebc832a09f33aa66f2651c0f8699cd27e884999d2499b71ff5659a1aa9037" -> "sha256:bfbd4e65215957b591543116f555ca9f0ff760c693fdf34aca54fd6328544414" [label=""];
  "sha256:bfbd4e65215957b591543116f555ca9f0ff760c693fdf34aca54fd6328544414" -> "sha256:58f8cf4c40a67544c18ba8335ccf4105464e3d669fa4dc839a263251d3703ca9" [label=""];
  "sha256:418945999389e05bdcf6951a039386cb9792f24cee2756c897563a79573df0bc" -> "sha256:58f8cf4c40a67544c18ba8335ccf4105464e3d669fa4dc839a263251d3703ca9" [label=""];
  "sha256:58f8cf4c40a67544c18ba8335ccf4105464e3d669fa4dc839a263251d3703ca9" -> "sha256:9bfbb1f851813102a2ebd381db155eb27339887ff1e3b9c9e20bab18f66d8405" [label=""];
  "sha256:418945999389e05bdcf6951a039386cb9792f24cee2756c897563a79573df0bc" -> "sha256:9bfbb1f851813102a2ebd381db155eb27339887ff1e3b9c9e20bab18f66d8405" [label=""];
  "sha256:9bfbb1f851813102a2ebd381db155eb27339887ff1e3b9c9e20bab18f66d8405" -> "sha256:dc39515b091c0d47e4cd80e000f583a9cce92106917233e5ed76102cb0a18077" [label=""];
  "sha256:dc39515b091c0d47e4cd80e000f583a9cce92106917233e5ed76102cb0a18077" -> "sha256:22517d19a1f6ad9550c591b9ae50af3a45df38f40e90d151f55de8c2dd1ea9f2" [label=""];
}

