[app/sources/252786576.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:35c07f4169c47c1d74aa0576df28405c26e1296f3688aeff4c98a163821f2152" [label="local://context" shape="ellipse"];
  "sha256:843aa3b8ba8a0fd3fc0d513ad88cfd9f32b1702a67f9cb16a7f20c18ac7848fa" [label="copy{src=/scripts, dest=/}" shape="note"];
  "sha256:9270902a6155d9095c49c913cf737edb620872d67f799bd4b8d822340df98261" [label="/bin/sh -c /install.sh && rm /install*" shape="box"];
  "sha256:609e297fb41efb08a9d02e9f6670e89282437d7e24af200fb88885c002f6b6aa" [label="mkdir{path=/cssapp}" shape="note"];
  "sha256:dbeebf1ee87ec318be52abbe05b76fa162024b77094b92095c7b1e731efc52f7" [label="sha256:dbeebf1ee87ec318be52abbe05b76fa162024b77094b92095c7b1e731efc52f7" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:843aa3b8ba8a0fd3fc0d513ad88cfd9f32b1702a67f9cb16a7f20c18ac7848fa" [label=""];
  "sha256:35c07f4169c47c1d74aa0576df28405c26e1296f3688aeff4c98a163821f2152" -> "sha256:843aa3b8ba8a0fd3fc0d513ad88cfd9f32b1702a67f9cb16a7f20c18ac7848fa" [label=""];
  "sha256:843aa3b8ba8a0fd3fc0d513ad88cfd9f32b1702a67f9cb16a7f20c18ac7848fa" -> "sha256:9270902a6155d9095c49c913cf737edb620872d67f799bd4b8d822340df98261" [label=""];
  "sha256:9270902a6155d9095c49c913cf737edb620872d67f799bd4b8d822340df98261" -> "sha256:609e297fb41efb08a9d02e9f6670e89282437d7e24af200fb88885c002f6b6aa" [label=""];
  "sha256:609e297fb41efb08a9d02e9f6670e89282437d7e24af200fb88885c002f6b6aa" -> "sha256:dbeebf1ee87ec318be52abbe05b76fa162024b77094b92095c7b1e731efc52f7" [label=""];
}

