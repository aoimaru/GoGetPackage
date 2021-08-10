[app/sources/358673142.Dockerfile]
digraph {
  "sha256:d3662b56dfb917c5656e41d8b412d45e34012234bd4d2de1f0aebdf1bc647b10" [label="docker-image://docker.io/biocontainers/biocontainers:debian-stretch-backports_cv2@sha256:6ccbca820c809373abfcefe889cba40519ede42371dfe52c4480e43a6b7f8855" shape="ellipse"];
  "sha256:67a62ffd5bbc65118a619f560fb83737eb39dfccf83f506144b4bf52ab1c36a7" [label="/bin/sh -c apt-get update && apt-get install -t stretch-backports -y canu && apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/*" shape="box"];
  "sha256:bec1ab64ce3b82ad87912510197f1a6d54e3827bac421e719abb96fd27d2ef30" [label="sha256:bec1ab64ce3b82ad87912510197f1a6d54e3827bac421e719abb96fd27d2ef30" shape="plaintext"];
  "sha256:d3662b56dfb917c5656e41d8b412d45e34012234bd4d2de1f0aebdf1bc647b10" -> "sha256:67a62ffd5bbc65118a619f560fb83737eb39dfccf83f506144b4bf52ab1c36a7" [label=""];
  "sha256:67a62ffd5bbc65118a619f560fb83737eb39dfccf83f506144b4bf52ab1c36a7" -> "sha256:bec1ab64ce3b82ad87912510197f1a6d54e3827bac421e719abb96fd27d2ef30" [label=""];
}

