[app/sources/328614529.Dockerfile]
digraph {
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" [label="local://context" shape="ellipse"];
  "sha256:e00c17e01b29263c4ace32a26ba0940d919bfaf17da9881b7065e78ad34e2fc0" [label="docker-image://docker.io/bcgovimages/von-image:py36-1.9-0" shape="ellipse"];
  "sha256:8fba6376b9a6ca41ac866aaf6f88eb62595004e8928895ef0f2b3472b6648cd3" [label="copy{src=/requirements.txt, dest=/}" shape="note"];
  "sha256:b13b688dbf3dc5ccb57b556d7dbfa00e05e85c07a169bd651d07a9656813eab0" [label="copy{src=/requirements.dev.txt, dest=/}" shape="note"];
  "sha256:012c6bf82e792c656b8a4c9cf86d772a65622ac2f94be50a7a9e6bb140047cb5" [label="/bin/sh -c pip3 install --no-cache-dir -r requirements.txt -r requirements.dev.txt" shape="box"];
  "sha256:42a2d6912c5e92e5a3b57b91c9219b14e535027a471189a2f7cfd3a5cd296465" [label="copy{src=/indy_catalyst_agent, dest=/indy_catalyst_agent}" shape="note"];
  "sha256:d7bca72e36c5df145886a091c3da025a8dbd97307202f8cafb361749f271643b" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:3c922e8b4d45a09b711896384304ec53af1743510163787117a71c7f2861d6d2" [label="copy{src=/setup.py, dest=/}" shape="note"];
  "sha256:7564e3ecbc2e01757b7422c90371a3f9af880525e8257f787a7da615c72fdaa5" [label="/bin/sh -c pip3 install --no-cache-dir -e ." shape="box"];
  "sha256:a0178c4d3dd94f84669cae96ac32a0d7e5244c63c2dfcf9bdf35f828b15d183a" [label="sha256:a0178c4d3dd94f84669cae96ac32a0d7e5244c63c2dfcf9bdf35f828b15d183a" shape="plaintext"];
  "sha256:e00c17e01b29263c4ace32a26ba0940d919bfaf17da9881b7065e78ad34e2fc0" -> "sha256:8fba6376b9a6ca41ac866aaf6f88eb62595004e8928895ef0f2b3472b6648cd3" [label=""];
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" -> "sha256:8fba6376b9a6ca41ac866aaf6f88eb62595004e8928895ef0f2b3472b6648cd3" [label=""];
  "sha256:8fba6376b9a6ca41ac866aaf6f88eb62595004e8928895ef0f2b3472b6648cd3" -> "sha256:b13b688dbf3dc5ccb57b556d7dbfa00e05e85c07a169bd651d07a9656813eab0" [label=""];
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" -> "sha256:b13b688dbf3dc5ccb57b556d7dbfa00e05e85c07a169bd651d07a9656813eab0" [label=""];
  "sha256:b13b688dbf3dc5ccb57b556d7dbfa00e05e85c07a169bd651d07a9656813eab0" -> "sha256:012c6bf82e792c656b8a4c9cf86d772a65622ac2f94be50a7a9e6bb140047cb5" [label=""];
  "sha256:012c6bf82e792c656b8a4c9cf86d772a65622ac2f94be50a7a9e6bb140047cb5" -> "sha256:42a2d6912c5e92e5a3b57b91c9219b14e535027a471189a2f7cfd3a5cd296465" [label=""];
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" -> "sha256:42a2d6912c5e92e5a3b57b91c9219b14e535027a471189a2f7cfd3a5cd296465" [label=""];
  "sha256:42a2d6912c5e92e5a3b57b91c9219b14e535027a471189a2f7cfd3a5cd296465" -> "sha256:d7bca72e36c5df145886a091c3da025a8dbd97307202f8cafb361749f271643b" [label=""];
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" -> "sha256:d7bca72e36c5df145886a091c3da025a8dbd97307202f8cafb361749f271643b" [label=""];
  "sha256:d7bca72e36c5df145886a091c3da025a8dbd97307202f8cafb361749f271643b" -> "sha256:3c922e8b4d45a09b711896384304ec53af1743510163787117a71c7f2861d6d2" [label=""];
  "sha256:0dec763ffff6f090b4399250bfefdbea009e2a77dcac808d16d0f15f8db3d35d" -> "sha256:3c922e8b4d45a09b711896384304ec53af1743510163787117a71c7f2861d6d2" [label=""];
  "sha256:3c922e8b4d45a09b711896384304ec53af1743510163787117a71c7f2861d6d2" -> "sha256:7564e3ecbc2e01757b7422c90371a3f9af880525e8257f787a7da615c72fdaa5" [label=""];
  "sha256:7564e3ecbc2e01757b7422c90371a3f9af880525e8257f787a7da615c72fdaa5" -> "sha256:a0178c4d3dd94f84669cae96ac32a0d7e5244c63c2dfcf9bdf35f828b15d183a" [label=""];
}

