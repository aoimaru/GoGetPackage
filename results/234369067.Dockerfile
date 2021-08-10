[app/sources/234369067.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:70ece19a4c72dcd77e45071d72a33b643cbc336ac4fb5ccd648485d950d54641" [label="/bin/sh -c apt update && apt -y upgrade && apt -y install git python-pip software-properties-common zile byobu ansible" shape="box"];
  "sha256:837b18b5d42c7465229c358598e77ab75887be153fb0b06ab2e91887dbe6e022" [label="/bin/sh -c pip install --upgrade pip==9.0.3 && pip install fortiosapi" shape="box"];
  "sha256:e405c8822a02788483c6a57bf634ac5ee21b3f6e24543a2f43fe470816c70f68" [label="sha256:e405c8822a02788483c6a57bf634ac5ee21b3f6e24543a2f43fe470816c70f68" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:70ece19a4c72dcd77e45071d72a33b643cbc336ac4fb5ccd648485d950d54641" [label=""];
  "sha256:70ece19a4c72dcd77e45071d72a33b643cbc336ac4fb5ccd648485d950d54641" -> "sha256:837b18b5d42c7465229c358598e77ab75887be153fb0b06ab2e91887dbe6e022" [label=""];
  "sha256:837b18b5d42c7465229c358598e77ab75887be153fb0b06ab2e91887dbe6e022" -> "sha256:e405c8822a02788483c6a57bf634ac5ee21b3f6e24543a2f43fe470816c70f68" [label=""];
}

