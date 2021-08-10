[app/sources/341654108.Dockerfile]
digraph {
  "sha256:7c09b749d01d92d1a685bf4afdd44713413d2c8fb5a1eec6f72338858c5196b5" [label="local://context" shape="ellipse"];
  "sha256:de0516355a6e57750ba7a79f919666112d47ac16a9cc46f7bbfd6bbb1f2c40e5" [label="docker-image://k8s.gcr.io/kube-cross:KUBE_BUILD_IMAGE_CROSS_TAG" shape="ellipse"];
  "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" [label="/bin/sh -c touch /kube-build-image" shape="box"];
  "sha256:1567c3789434267c14824e354c7bd80742228aee2c1a4ec66cb6d72624061579" [label="/bin/sh -c chmod -R a+rwx /usr/local/go/pkg" shape="box"];
  "sha256:67cd25990d6ae5984005f167db72383ab4b123ea056a820561ef88c9c9476077" [label="/bin/sh -c mkdir /var/run/kubernetes && chmod a+rwx /var/run/kubernetes" shape="box"];
  "sha256:727f981f430c14c4988617e8dae14cdba771717f308f11f77862981eb2e16a88" [label="mkdir{path=/go/src/k8s.io/kubernetes}" shape="note"];
  "sha256:a29b9e0ae51cd4637eb3a7d558c6c8cde844340eb6db676998e55fa539b5f673" [label="/bin/sh -c git config --system user.email \"nobody@k8s.io\"   && git config --system user.name \"kube-build-image\"" shape="box"];
  "sha256:2689f706a50f6e52afcd961f7cf1077bc414a0e9f5f86a91ad27dda4aff00c66" [label="/bin/sh -c chmod -R a+rwx $GOPATH" shape="box"];
  "sha256:6ceccd1c13d25d64f9b6faf3c56716ed59c4ee35862b07c06d6832e077ceab9f" [label="copy{src=/localtime, dest=/etc/localtime}" shape="note"];
  "sha256:05b97f158bd5c488f845726ee0aa923c4078f0d210e544184eed05cbbe694e04" [label="/bin/sh -c chmod a+r /etc/localtime" shape="box"];
  "sha256:03ede23af35cb6b68db34ab32067d11c61c49237dee0a5f2de8e5fb367cdd393" [label="copy{src=/rsyncd.password, dest=/}" shape="note"];
  "sha256:393cd0dc3e1848520059ecc1fb312b07c1ba0255b8d212862d76ad3dc49b0bff" [label="/bin/sh -c chmod a+r /rsyncd.password" shape="box"];
  "sha256:def8c7636571ff4727d122c738e82fc4cc8e124f93508a3f2d4a1274b809b0ac" [label="copy{src=/rsyncd.sh, dest=/}" shape="note"];
  "sha256:2daca2daa93cc94845cf7d3b7374b36ee2c4b80ebe4b766e880c29e752c7d38d" [label="/bin/sh -c chmod a+rx /rsyncd.sh" shape="box"];
  "sha256:788005ee3e4c6ecd60f83525112726a68f30a3650f22317f1fec706f1d3343b5" [label="sha256:788005ee3e4c6ecd60f83525112726a68f30a3650f22317f1fec706f1d3343b5" shape="plaintext"];
  "sha256:de0516355a6e57750ba7a79f919666112d47ac16a9cc46f7bbfd6bbb1f2c40e5" -> "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" [label=""];
  "sha256:cc2dba5df68d648e9d9a71216dfba1bba2beef6c9c042c2913e04d170dfb68cb" -> "sha256:1567c3789434267c14824e354c7bd80742228aee2c1a4ec66cb6d72624061579" [label=""];
  "sha256:1567c3789434267c14824e354c7bd80742228aee2c1a4ec66cb6d72624061579" -> "sha256:67cd25990d6ae5984005f167db72383ab4b123ea056a820561ef88c9c9476077" [label=""];
  "sha256:67cd25990d6ae5984005f167db72383ab4b123ea056a820561ef88c9c9476077" -> "sha256:727f981f430c14c4988617e8dae14cdba771717f308f11f77862981eb2e16a88" [label=""];
  "sha256:727f981f430c14c4988617e8dae14cdba771717f308f11f77862981eb2e16a88" -> "sha256:a29b9e0ae51cd4637eb3a7d558c6c8cde844340eb6db676998e55fa539b5f673" [label=""];
  "sha256:a29b9e0ae51cd4637eb3a7d558c6c8cde844340eb6db676998e55fa539b5f673" -> "sha256:2689f706a50f6e52afcd961f7cf1077bc414a0e9f5f86a91ad27dda4aff00c66" [label=""];
  "sha256:2689f706a50f6e52afcd961f7cf1077bc414a0e9f5f86a91ad27dda4aff00c66" -> "sha256:6ceccd1c13d25d64f9b6faf3c56716ed59c4ee35862b07c06d6832e077ceab9f" [label=""];
  "sha256:7c09b749d01d92d1a685bf4afdd44713413d2c8fb5a1eec6f72338858c5196b5" -> "sha256:6ceccd1c13d25d64f9b6faf3c56716ed59c4ee35862b07c06d6832e077ceab9f" [label=""];
  "sha256:6ceccd1c13d25d64f9b6faf3c56716ed59c4ee35862b07c06d6832e077ceab9f" -> "sha256:05b97f158bd5c488f845726ee0aa923c4078f0d210e544184eed05cbbe694e04" [label=""];
  "sha256:05b97f158bd5c488f845726ee0aa923c4078f0d210e544184eed05cbbe694e04" -> "sha256:03ede23af35cb6b68db34ab32067d11c61c49237dee0a5f2de8e5fb367cdd393" [label=""];
  "sha256:7c09b749d01d92d1a685bf4afdd44713413d2c8fb5a1eec6f72338858c5196b5" -> "sha256:03ede23af35cb6b68db34ab32067d11c61c49237dee0a5f2de8e5fb367cdd393" [label=""];
  "sha256:03ede23af35cb6b68db34ab32067d11c61c49237dee0a5f2de8e5fb367cdd393" -> "sha256:393cd0dc3e1848520059ecc1fb312b07c1ba0255b8d212862d76ad3dc49b0bff" [label=""];
  "sha256:393cd0dc3e1848520059ecc1fb312b07c1ba0255b8d212862d76ad3dc49b0bff" -> "sha256:def8c7636571ff4727d122c738e82fc4cc8e124f93508a3f2d4a1274b809b0ac" [label=""];
  "sha256:7c09b749d01d92d1a685bf4afdd44713413d2c8fb5a1eec6f72338858c5196b5" -> "sha256:def8c7636571ff4727d122c738e82fc4cc8e124f93508a3f2d4a1274b809b0ac" [label=""];
  "sha256:def8c7636571ff4727d122c738e82fc4cc8e124f93508a3f2d4a1274b809b0ac" -> "sha256:2daca2daa93cc94845cf7d3b7374b36ee2c4b80ebe4b766e880c29e752c7d38d" [label=""];
  "sha256:2daca2daa93cc94845cf7d3b7374b36ee2c4b80ebe4b766e880c29e752c7d38d" -> "sha256:788005ee3e4c6ecd60f83525112726a68f30a3650f22317f1fec706f1d3343b5" [label=""];
}

