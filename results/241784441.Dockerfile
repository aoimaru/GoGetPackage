[app/sources/241784441.Dockerfile]
digraph {
  "sha256:18d83d1808dfbf3182187802b0b0311050548aa1ea09520498dcbc6d9d16b84a" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:3d7332b518bb74fbb91acc0bb07ffa108959d531ff0844caebbe1ffde737fbf9" [label="copy{src=/install/*.sh, dest=/install/}" shape="note"];
  "sha256:3d3c9e443f2d102c1ac6d52696ce73113f3f4bed05cbf5a2b981cdf99e53deb9" [label="/bin/sh -c /install/install_bootstrap_deb_packages.sh" shape="box"];
  "sha256:7de36565f956f53d678985d87d96843c472ddac8b8b1c302afed027ccdbd634e" [label="/bin/sh -c add-apt-repository -y ppa:openjdk-r/ppa &&     add-apt-repository -y ppa:george-edison55/cmake-3.x" shape="box"];
  "sha256:1373e1c916d468cd43bbdad58e3d5a8d43c0231e253cd22941cde820804cbb4c" [label="/bin/sh -c /install/install_deb_packages.sh" shape="box"];
  "sha256:eca7fe6f3e2e1137ee19484500ef3658b824c00a40699d30d8088bcaa40e1168" [label="/bin/sh -c /install/install_pip_packages.sh" shape="box"];
  "sha256:30df02fc98e0fbc948f036bab06a5d6ae5c95c02e07b03e84db3b3ac89140fc5" [label="/bin/sh -c /install/install_bazel.sh" shape="box"];
  "sha256:99272c538740a119d34926289342bb2bec8775b9ef34055890892c4f7959cdf5" [label="/bin/sh -c /install/install_proto3.sh" shape="box"];
  "sha256:4014243af72d4793e6ea44cea976f85bb348a3f63d65d2f23071b994d7ff6ed3" [label="/bin/sh -c /install/install_buildifier.sh" shape="box"];
  "sha256:dd81e94640b44fb9d85a8552fea3993e36d1f5cdb1b933bfb7b5e05f351a3f5d" [label="/bin/sh -c /install/install_auditwheel.sh" shape="box"];
  "sha256:fee1c5e38d80f59a1103f2d590dd2581bfb6d12f79253fba6326d03a1a3b06fd" [label="/bin/sh -c /install/install_golang.sh" shape="box"];
  "sha256:0760d912401b65c9dd3a688297aa8ec52d68a5ee9b77ff927bf27201076fda83" [label="copy{src=/install/.bazelrc, dest=/etc/bazel.bazelrc}" shape="note"];
  "sha256:bd50d6dd89352d84acaf0e5a53e5ce0f2fe5788d06a43b97c35ac6c27e5fd0d4" [label="sha256:bd50d6dd89352d84acaf0e5a53e5ce0f2fe5788d06a43b97c35ac6c27e5fd0d4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:3d7332b518bb74fbb91acc0bb07ffa108959d531ff0844caebbe1ffde737fbf9" [label=""];
  "sha256:18d83d1808dfbf3182187802b0b0311050548aa1ea09520498dcbc6d9d16b84a" -> "sha256:3d7332b518bb74fbb91acc0bb07ffa108959d531ff0844caebbe1ffde737fbf9" [label=""];
  "sha256:3d7332b518bb74fbb91acc0bb07ffa108959d531ff0844caebbe1ffde737fbf9" -> "sha256:3d3c9e443f2d102c1ac6d52696ce73113f3f4bed05cbf5a2b981cdf99e53deb9" [label=""];
  "sha256:3d3c9e443f2d102c1ac6d52696ce73113f3f4bed05cbf5a2b981cdf99e53deb9" -> "sha256:7de36565f956f53d678985d87d96843c472ddac8b8b1c302afed027ccdbd634e" [label=""];
  "sha256:7de36565f956f53d678985d87d96843c472ddac8b8b1c302afed027ccdbd634e" -> "sha256:1373e1c916d468cd43bbdad58e3d5a8d43c0231e253cd22941cde820804cbb4c" [label=""];
  "sha256:1373e1c916d468cd43bbdad58e3d5a8d43c0231e253cd22941cde820804cbb4c" -> "sha256:eca7fe6f3e2e1137ee19484500ef3658b824c00a40699d30d8088bcaa40e1168" [label=""];
  "sha256:eca7fe6f3e2e1137ee19484500ef3658b824c00a40699d30d8088bcaa40e1168" -> "sha256:30df02fc98e0fbc948f036bab06a5d6ae5c95c02e07b03e84db3b3ac89140fc5" [label=""];
  "sha256:30df02fc98e0fbc948f036bab06a5d6ae5c95c02e07b03e84db3b3ac89140fc5" -> "sha256:99272c538740a119d34926289342bb2bec8775b9ef34055890892c4f7959cdf5" [label=""];
  "sha256:99272c538740a119d34926289342bb2bec8775b9ef34055890892c4f7959cdf5" -> "sha256:4014243af72d4793e6ea44cea976f85bb348a3f63d65d2f23071b994d7ff6ed3" [label=""];
  "sha256:4014243af72d4793e6ea44cea976f85bb348a3f63d65d2f23071b994d7ff6ed3" -> "sha256:dd81e94640b44fb9d85a8552fea3993e36d1f5cdb1b933bfb7b5e05f351a3f5d" [label=""];
  "sha256:dd81e94640b44fb9d85a8552fea3993e36d1f5cdb1b933bfb7b5e05f351a3f5d" -> "sha256:fee1c5e38d80f59a1103f2d590dd2581bfb6d12f79253fba6326d03a1a3b06fd" [label=""];
  "sha256:fee1c5e38d80f59a1103f2d590dd2581bfb6d12f79253fba6326d03a1a3b06fd" -> "sha256:0760d912401b65c9dd3a688297aa8ec52d68a5ee9b77ff927bf27201076fda83" [label=""];
  "sha256:18d83d1808dfbf3182187802b0b0311050548aa1ea09520498dcbc6d9d16b84a" -> "sha256:0760d912401b65c9dd3a688297aa8ec52d68a5ee9b77ff927bf27201076fda83" [label=""];
  "sha256:0760d912401b65c9dd3a688297aa8ec52d68a5ee9b77ff927bf27201076fda83" -> "sha256:bd50d6dd89352d84acaf0e5a53e5ce0f2fe5788d06a43b97c35ac6c27e5fd0d4" [label=""];
}

