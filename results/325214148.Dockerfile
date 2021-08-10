[app/sources/325214148.Dockerfile]
digraph {
  "sha256:431a0fc9b849583f07f1fd5f24cf8f8caa3506003055bc7c1808411cd860affd" [label="docker-image://docker.io/jitsi/base:latest" shape="ellipse"];
  "sha256:da98f43d6adda7675726c50a6f36977ede1f33c18d27fed2a85fe1d30903e275" [label="/bin/sh -c apt-dpkg-wrap apt-get update && \tapt-dpkg-wrap apt-get install -y cron nginx-extras jitsi-meet-web && \tapt-dpkg-wrap apt-get install -y -t stretch-backports certbot && \tapt-cleanup && \trm -f /etc/nginx/conf.d/default.conf && \trm -f /usr/share/jitsi-meet/interface_config.js" shape="box"];
  "sha256:e8aed2e651f9d12ff79ccab06bb537c57f1d33447ee38de248f1c7e4d86b5833" [label="local://context" shape="ellipse"];
  "sha256:e05509d27c638ae7d24b2253c13e3645b3c499ec343450c4c14640dff8728291" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:33687896da5e8cc7660910a99a2dfbd684b665cfb26247d5e2de480a03332865" [label="sha256:33687896da5e8cc7660910a99a2dfbd684b665cfb26247d5e2de480a03332865" shape="plaintext"];
  "sha256:431a0fc9b849583f07f1fd5f24cf8f8caa3506003055bc7c1808411cd860affd" -> "sha256:da98f43d6adda7675726c50a6f36977ede1f33c18d27fed2a85fe1d30903e275" [label=""];
  "sha256:da98f43d6adda7675726c50a6f36977ede1f33c18d27fed2a85fe1d30903e275" -> "sha256:e05509d27c638ae7d24b2253c13e3645b3c499ec343450c4c14640dff8728291" [label=""];
  "sha256:e8aed2e651f9d12ff79ccab06bb537c57f1d33447ee38de248f1c7e4d86b5833" -> "sha256:e05509d27c638ae7d24b2253c13e3645b3c499ec343450c4c14640dff8728291" [label=""];
  "sha256:e05509d27c638ae7d24b2253c13e3645b3c499ec343450c4c14640dff8728291" -> "sha256:33687896da5e8cc7660910a99a2dfbd684b665cfb26247d5e2de480a03332865" [label=""];
}

