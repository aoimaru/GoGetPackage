[app/sources/213035211.Dockerfile]
digraph {
  "sha256:388a97833bc281c5d202d1debc73097d89b092e37972355369f39c428200d69c" [label="docker-image://docker.io/fluent/fluentd:latest-onbuild@sha256:9a3c4f49950548877f4ddec28916a63040c58163b47c47a26972d2d2f0a8bd9e" shape="ellipse"];
  "sha256:daeaf79a13088e6b1f2b9ab423eb231323b568bf6a9809496a5c432792278eb7" [label="local://context" shape="ellipse"];
  "sha256:fce7ff61a4a716d6d1412ed227614c3eb1cc170b862c71e8e980cadb98d4b654" [label="copy{src=/fluent.conf, dest=/fluentd/etc/}" shape="note"];
  "sha256:a0f19e207d9739ec959b28d3174157ee9c0dcab988c8e9618d075986f36520b3" [label="copy{src=/plugins, dest=/fluentd/plugins/}" shape="note"];
  "sha256:27c7b1aa10a78ea20508625a4491cdc35400ab69454bcd902a2e9d05bc8009f8" [label="mkdir{path=/home/fluent}" shape="note"];
  "sha256:951cd0a0e272279e18d94175c9807ee29aa6a89a9a6e94a20cf5418f1600d3c4" [label="/bin/sh -c apk --no-cache add sudo build-base ruby-dev &&     sudo -u fluent gem install fluent-plugin-secure-forward fluent-plugin-s3 &&     rm -rf /home/fluent/.gem/ruby/2.3.0/cache/*.gem && sudo -u fluent gem sources -c &&     apk del sudo build-base ruby-dev" shape="box"];
  "sha256:4e4b870aecb5dcf21188dc9af51293b4038afc921a040c06ceacf49b9b9354aa" [label="sha256:4e4b870aecb5dcf21188dc9af51293b4038afc921a040c06ceacf49b9b9354aa" shape="plaintext"];
  "sha256:388a97833bc281c5d202d1debc73097d89b092e37972355369f39c428200d69c" -> "sha256:fce7ff61a4a716d6d1412ed227614c3eb1cc170b862c71e8e980cadb98d4b654" [label=""];
  "sha256:daeaf79a13088e6b1f2b9ab423eb231323b568bf6a9809496a5c432792278eb7" -> "sha256:fce7ff61a4a716d6d1412ed227614c3eb1cc170b862c71e8e980cadb98d4b654" [label=""];
  "sha256:fce7ff61a4a716d6d1412ed227614c3eb1cc170b862c71e8e980cadb98d4b654" -> "sha256:a0f19e207d9739ec959b28d3174157ee9c0dcab988c8e9618d075986f36520b3" [label=""];
  "sha256:daeaf79a13088e6b1f2b9ab423eb231323b568bf6a9809496a5c432792278eb7" -> "sha256:a0f19e207d9739ec959b28d3174157ee9c0dcab988c8e9618d075986f36520b3" [label=""];
  "sha256:a0f19e207d9739ec959b28d3174157ee9c0dcab988c8e9618d075986f36520b3" -> "sha256:27c7b1aa10a78ea20508625a4491cdc35400ab69454bcd902a2e9d05bc8009f8" [label=""];
  "sha256:27c7b1aa10a78ea20508625a4491cdc35400ab69454bcd902a2e9d05bc8009f8" -> "sha256:951cd0a0e272279e18d94175c9807ee29aa6a89a9a6e94a20cf5418f1600d3c4" [label=""];
  "sha256:951cd0a0e272279e18d94175c9807ee29aa6a89a9a6e94a20cf5418f1600d3c4" -> "sha256:4e4b870aecb5dcf21188dc9af51293b4038afc921a040c06ceacf49b9b9354aa" [label=""];
}

