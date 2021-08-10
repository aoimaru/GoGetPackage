[app/sources/252776473.Dockerfile]
digraph {
  "sha256:cee4e07c8f5928557f600a2f0442837829c4530c4f505177c5e2d1a77773f4ae" [label="docker-image://docker.io/bopen/ubuntu-pyenv:latest" shape="ellipse"];
  "sha256:a5b8779c4eb03afbb14222f0ebe837d653e020d11c840ec0e9736a1b9994b1dd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends python-software-properties software-properties-common && add-apt-repository -s ppa:ubuntugis/ubuntugis-unstable && apt-get remove -y python-software-properties software-properties-common && apt-get autoremove -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e97a8d420b4070244271b97a8668c9cad114533b0190d9296cdc831ab93c77cd" [label="sha256:e97a8d420b4070244271b97a8668c9cad114533b0190d9296cdc831ab93c77cd" shape="plaintext"];
  "sha256:cee4e07c8f5928557f600a2f0442837829c4530c4f505177c5e2d1a77773f4ae" -> "sha256:a5b8779c4eb03afbb14222f0ebe837d653e020d11c840ec0e9736a1b9994b1dd" [label=""];
  "sha256:a5b8779c4eb03afbb14222f0ebe837d653e020d11c840ec0e9736a1b9994b1dd" -> "sha256:e97a8d420b4070244271b97a8668c9cad114533b0190d9296cdc831ab93c77cd" [label=""];
}

