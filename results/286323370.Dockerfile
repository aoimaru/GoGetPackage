[app/sources/286323370.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:7576fc5e70e499f5ab43e77a96b61628094a42f8723743cffe6efd1d28e79cae" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -y --no-install-recommends --no-install-suggests \t\tca-certificates \t\tcurl \t\tgnupg1 \t&& curl -s https://dl.google.com/linux/linux_signing_key.pub | apt-key add - \t&& echo \"deb http://dl.google.com/linux/chrome/deb/ stable main\" | tee /etc/apt/sources.list.d/google-chrome.list \t&& apt-get update \t&& apt-get install -y --no-install-recommends --no-install-suggests \t\tgoogle-chrome-stable \t&& apt-get remove -y \t\tcurl \t\tgnupg1 \t&& apt-get autoremove -y \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \t&& useradd -m -s /bin/bash -u 1000 chrome" shape="box"];
  "sha256:0d41c3ba071273f3a75bd254bc674158c68395b068646642a4609cea499c2482" [label="mkdir{path=/home/chrome}" shape="note"];
  "sha256:775ac57cb92869a44f7deba15be23741f9503985fc384af30c15a3924406dda7" [label="sha256:775ac57cb92869a44f7deba15be23741f9503985fc384af30c15a3924406dda7" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:7576fc5e70e499f5ab43e77a96b61628094a42f8723743cffe6efd1d28e79cae" [label=""];
  "sha256:7576fc5e70e499f5ab43e77a96b61628094a42f8723743cffe6efd1d28e79cae" -> "sha256:0d41c3ba071273f3a75bd254bc674158c68395b068646642a4609cea499c2482" [label=""];
  "sha256:0d41c3ba071273f3a75bd254bc674158c68395b068646642a4609cea499c2482" -> "sha256:775ac57cb92869a44f7deba15be23741f9503985fc384af30c15a3924406dda7" [label=""];
}

