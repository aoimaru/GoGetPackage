[app/sources/279015260.Dockerfile]
digraph {
  "sha256:8f749354ebc7a10693ac3164f738c500d31f4afdeac5d3f69f273aceb18deb22" [label="docker-image://docker.io/rocker/binder:3.5.3" shape="ellipse"];
  "sha256:35a2f9d76a5c4b16a7b4860c2cfbc50e590e70e27af2bed33f26fc60bdfcbb17" [label="local://context" shape="ellipse"];
  "sha256:07d5185d46e333514a917ee0d39bbcf8b9d2bdf5a90c6755c164f33002e178bb" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:ad3c5004f692f57b398f235340a11d7e69958ae44f6ef64e976e732ca9359182" [label="/bin/sh -c chown -R ${NB_USER} ${HOME}" shape="box"];
  "sha256:d0a40695f6d58b7731145d0da41ec3e21e57b3f4c8b67487b95aced089903beb" [label="/bin/sh -c if [ -f DESCRIPTION ]; then R --quiet -e \"devtools::install(dep=TRUE)\"; fi" shape="box"];
  "sha256:32004834f5c539fc77cbe13283c3e44c98cc32aaf16ef367f4a5f6d25272da43" [label="sha256:32004834f5c539fc77cbe13283c3e44c98cc32aaf16ef367f4a5f6d25272da43" shape="plaintext"];
  "sha256:8f749354ebc7a10693ac3164f738c500d31f4afdeac5d3f69f273aceb18deb22" -> "sha256:07d5185d46e333514a917ee0d39bbcf8b9d2bdf5a90c6755c164f33002e178bb" [label=""];
  "sha256:35a2f9d76a5c4b16a7b4860c2cfbc50e590e70e27af2bed33f26fc60bdfcbb17" -> "sha256:07d5185d46e333514a917ee0d39bbcf8b9d2bdf5a90c6755c164f33002e178bb" [label=""];
  "sha256:07d5185d46e333514a917ee0d39bbcf8b9d2bdf5a90c6755c164f33002e178bb" -> "sha256:ad3c5004f692f57b398f235340a11d7e69958ae44f6ef64e976e732ca9359182" [label=""];
  "sha256:ad3c5004f692f57b398f235340a11d7e69958ae44f6ef64e976e732ca9359182" -> "sha256:d0a40695f6d58b7731145d0da41ec3e21e57b3f4c8b67487b95aced089903beb" [label=""];
  "sha256:d0a40695f6d58b7731145d0da41ec3e21e57b3f4c8b67487b95aced089903beb" -> "sha256:32004834f5c539fc77cbe13283c3e44c98cc32aaf16ef367f4a5f6d25272da43" [label=""];
}

