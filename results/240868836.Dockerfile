[app/sources/240868836.Dockerfile]
digraph {
  "sha256:e85adb7c15046a558e93b45ee93ff9ca3b6d28c02c1e231ac292787df11214dd" [label="docker-image://docker.io/lewispeckover/base:3.5" shape="ellipse"];
  "sha256:53c45ec305df2db32572d0363a85d8c4e2b26e4a4d16e68735c1f7621d9598eb" [label="local://context" shape="ellipse"];
  "sha256:233829151ddb0f5c5c12ec84ca21d4244a3186d5e9424be2b32cb0380b2f8aa4" [label="copy{src=/docker, dest=/}" shape="note"];
  "sha256:b221e309c9648ca8932873a77e1cd6d178e81feefaa0ab499cdfaeb5d131b043" [label="https://github.com/lewispeckover/consulator/releases/download/0.4.3/consulator_0.4.3_linux_amd64" shape="ellipse"];
  "sha256:ff8bc9ccf7224074a79772e61de12955e640fbe904d5ef4db124b7df229dd053" [label="copy{src=/consulator_0.4.3_linux_amd64, dest=/bin/consulator}" shape="note"];
  "sha256:43e3802c26467f04bcef06aaeca4ca6f08cf69455a37d7c8d158e6581792ce23" [label="/bin/sh -c chmod +x /bin/consulator" shape="box"];
  "sha256:5372066d5c8296da3016efe220bfc7e3f7c1999810310f93a3591f2476c41d6f" [label="sha256:5372066d5c8296da3016efe220bfc7e3f7c1999810310f93a3591f2476c41d6f" shape="plaintext"];
  "sha256:e85adb7c15046a558e93b45ee93ff9ca3b6d28c02c1e231ac292787df11214dd" -> "sha256:233829151ddb0f5c5c12ec84ca21d4244a3186d5e9424be2b32cb0380b2f8aa4" [label=""];
  "sha256:53c45ec305df2db32572d0363a85d8c4e2b26e4a4d16e68735c1f7621d9598eb" -> "sha256:233829151ddb0f5c5c12ec84ca21d4244a3186d5e9424be2b32cb0380b2f8aa4" [label=""];
  "sha256:233829151ddb0f5c5c12ec84ca21d4244a3186d5e9424be2b32cb0380b2f8aa4" -> "sha256:ff8bc9ccf7224074a79772e61de12955e640fbe904d5ef4db124b7df229dd053" [label=""];
  "sha256:b221e309c9648ca8932873a77e1cd6d178e81feefaa0ab499cdfaeb5d131b043" -> "sha256:ff8bc9ccf7224074a79772e61de12955e640fbe904d5ef4db124b7df229dd053" [label=""];
  "sha256:ff8bc9ccf7224074a79772e61de12955e640fbe904d5ef4db124b7df229dd053" -> "sha256:43e3802c26467f04bcef06aaeca4ca6f08cf69455a37d7c8d158e6581792ce23" [label=""];
  "sha256:43e3802c26467f04bcef06aaeca4ca6f08cf69455a37d7c8d158e6581792ce23" -> "sha256:5372066d5c8296da3016efe220bfc7e3f7c1999810310f93a3591f2476c41d6f" [label=""];
}

