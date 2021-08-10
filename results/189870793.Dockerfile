[app/sources/189870793.Dockerfile]
digraph {
  "sha256:6cafa48f7f4f9cb2d37f90b3ef561910af7b8515447ea23006fe77262715b91b" [label="docker-image://docker.io/hurricane/dockergui:x11rdp1.2" shape="ellipse"];
  "sha256:1fef4aed9c7145e88f211289805126f5a46442819ca716e4f2931a79f3833e2a" [label="local://context" shape="ellipse"];
  "sha256:91178592d7ea844dd5cdca14410e24c9d59ea5df64ca27c6fae84b1278af607a" [label="copy{src=/src, dest=/}" shape="note"];
  "sha256:8f155dedfbfc9ff5ec71f6536295b204a3eef7dda77eb81e678869bfc339d05b" [label="/bin/sh -c echo 'deb http://archive.ubuntu.com/ubuntu trusty main universe restricted' > /etc/apt/sources.list && echo 'deb http://archive.ubuntu.com/ubuntu trusty-updates main universe restricted' >> /etc/apt/sources.list && add-apt-repository \"deb http://us.archive.ubuntu.com/ubuntu/ trusty universe multiverse\" && add-apt-repository \"deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe multiverse\" && apt-get update && apt-get install --no-install-recommends -y krusader && apt-get install -y cfv kdiff3 locate md5deep konsole krename kget unace lhasa unrar zip p7zip-full rar  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian /usr/share/linda /var/cache/man && (( find /usr/share/doc -depth -type f ! -name copyright|xargs rm || true )) && (( find /usr/share/doc -empty|xargs rmdir || true ))" shape="box"];
  "sha256:863fde07770057424dbb92e99bfc21aad1d7ba2d881f672a042bf2e54dedd738" [label="sha256:863fde07770057424dbb92e99bfc21aad1d7ba2d881f672a042bf2e54dedd738" shape="plaintext"];
  "sha256:6cafa48f7f4f9cb2d37f90b3ef561910af7b8515447ea23006fe77262715b91b" -> "sha256:91178592d7ea844dd5cdca14410e24c9d59ea5df64ca27c6fae84b1278af607a" [label=""];
  "sha256:1fef4aed9c7145e88f211289805126f5a46442819ca716e4f2931a79f3833e2a" -> "sha256:91178592d7ea844dd5cdca14410e24c9d59ea5df64ca27c6fae84b1278af607a" [label=""];
  "sha256:91178592d7ea844dd5cdca14410e24c9d59ea5df64ca27c6fae84b1278af607a" -> "sha256:8f155dedfbfc9ff5ec71f6536295b204a3eef7dda77eb81e678869bfc339d05b" [label=""];
  "sha256:8f155dedfbfc9ff5ec71f6536295b204a3eef7dda77eb81e678869bfc339d05b" -> "sha256:863fde07770057424dbb92e99bfc21aad1d7ba2d881f672a042bf2e54dedd738" [label=""];
}

