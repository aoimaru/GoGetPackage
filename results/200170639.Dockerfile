[app/sources/200170639.Dockerfile]
digraph {
  "sha256:1b27e9e7e8888ba67c9f99847520f5cb4a5228d87c5128858310d423c986bb7f" [label="local://context" shape="ellipse"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" [label="https://github.com/krallin/tini/releases/download/v0.18.0/tini" shape="ellipse"];
  "sha256:9850cc06d9943e25b8af4ca041b7fe526ad5a01867b1fa187331e5d1e7528e27" [label="copy{src=/tini, dest=/bin/tini}" shape="note"];
  "sha256:f69a686ab4b30f9becf3d3e3c32df3c86b15d1ca062b27d843071ed9f878f893" [label="/bin/sh -c chmod +x /bin/tini" shape="box"];
  "sha256:77f2135531d4689d4719f77c77d18357deab4daf16556f7116919e59ee119cef" [label="copy{src=/, dest=/usr/local/zeebe/}" shape="note"];
  "sha256:1924af00b401da9362a0243d45a2248a7ae2d8c5248f72036606b27068dd7854" [label="/bin/sh -c tar xfvz ${ZB_HOME}/*.tar.gz --strip 1 -C ${ZB_HOME}/ && rm ${ZB_HOME}/*.tar.gz" shape="box"];
  "sha256:c6f3b63fd3a1c304e7c632fa37f5ea87f71cadd873138c3e2613705e4ab2aba0" [label="mkdir{path=/usr/local/zeebe}" shape="note"];
  "sha256:f24743577e7c0681007f9e3207628dcc5242cd660cd9ecb2224b69a97b1487de" [label="copy{src=/docker/utils/startup.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:652f6d1d3a14f8fa795384e81b383e8569b7343ebeacf86a693215465797c527" [label="sha256:652f6d1d3a14f8fa795384e81b383e8569b7343ebeacf86a693215465797c527" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:9850cc06d9943e25b8af4ca041b7fe526ad5a01867b1fa187331e5d1e7528e27" [label=""];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" -> "sha256:9850cc06d9943e25b8af4ca041b7fe526ad5a01867b1fa187331e5d1e7528e27" [label=""];
  "sha256:9850cc06d9943e25b8af4ca041b7fe526ad5a01867b1fa187331e5d1e7528e27" -> "sha256:f69a686ab4b30f9becf3d3e3c32df3c86b15d1ca062b27d843071ed9f878f893" [label=""];
  "sha256:f69a686ab4b30f9becf3d3e3c32df3c86b15d1ca062b27d843071ed9f878f893" -> "sha256:77f2135531d4689d4719f77c77d18357deab4daf16556f7116919e59ee119cef" [label=""];
  "sha256:1b27e9e7e8888ba67c9f99847520f5cb4a5228d87c5128858310d423c986bb7f" -> "sha256:77f2135531d4689d4719f77c77d18357deab4daf16556f7116919e59ee119cef" [label=""];
  "sha256:77f2135531d4689d4719f77c77d18357deab4daf16556f7116919e59ee119cef" -> "sha256:1924af00b401da9362a0243d45a2248a7ae2d8c5248f72036606b27068dd7854" [label=""];
  "sha256:1924af00b401da9362a0243d45a2248a7ae2d8c5248f72036606b27068dd7854" -> "sha256:c6f3b63fd3a1c304e7c632fa37f5ea87f71cadd873138c3e2613705e4ab2aba0" [label=""];
  "sha256:c6f3b63fd3a1c304e7c632fa37f5ea87f71cadd873138c3e2613705e4ab2aba0" -> "sha256:f24743577e7c0681007f9e3207628dcc5242cd660cd9ecb2224b69a97b1487de" [label=""];
  "sha256:1b27e9e7e8888ba67c9f99847520f5cb4a5228d87c5128858310d423c986bb7f" -> "sha256:f24743577e7c0681007f9e3207628dcc5242cd660cd9ecb2224b69a97b1487de" [label=""];
  "sha256:f24743577e7c0681007f9e3207628dcc5242cd660cd9ecb2224b69a97b1487de" -> "sha256:652f6d1d3a14f8fa795384e81b383e8569b7343ebeacf86a693215465797c527" [label=""];
}

