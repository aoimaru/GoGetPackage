[app/sources/345356406.Dockerfile]
digraph {
  "sha256:ebb23c5d823ef67581e1f6526fc7f70f43cc3aa10a08b019231ae762b209e93a" [label="docker-image://docker.io/balenalib/armv7hf-fedora:28-run" shape="ellipse"];
  "sha256:b1787aee0724702636cd4087079162f5f81706b926d67020fff1b8e6cf2b3dac" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:5e7b0b51da6f03bd3210a0039645817810f38274344938ee22b91b370f024c0f" [label="sha256:5e7b0b51da6f03bd3210a0039645817810f38274344938ee22b91b370f024c0f" shape="plaintext"];
  "sha256:ebb23c5d823ef67581e1f6526fc7f70f43cc3aa10a08b019231ae762b209e93a" -> "sha256:b1787aee0724702636cd4087079162f5f81706b926d67020fff1b8e6cf2b3dac" [label=""];
  "sha256:b1787aee0724702636cd4087079162f5f81706b926d67020fff1b8e6cf2b3dac" -> "sha256:5e7b0b51da6f03bd3210a0039645817810f38274344938ee22b91b370f024c0f" [label=""];
}

