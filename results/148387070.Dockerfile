[app/sources/148387070.Dockerfile]
digraph {
  "sha256:80aafce1acbd89a03ec730e8849f553d8499716f8600858f03f1c39e5eb00236" [label="docker-image://docker.io/selenium/standalone-firefox-debug:3.14.0-arsenic" shape="ellipse"];
  "sha256:d3028ed6e0013d2f50c363b2472846d8f5a779e0a4b978eeaf2027ed3002f27a" [label="/bin/sh -c apt-get update -qqy   && apt-get -qqy install   gstreamer1.0-libav   pwgen   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*" shape="box"];
  "sha256:19b9ddc6f8b95fc11284f6764eec42425ced0da08e5e9fa976d4f4068f583f79" [label="sha256:19b9ddc6f8b95fc11284f6764eec42425ced0da08e5e9fa976d4f4068f583f79" shape="plaintext"];
  "sha256:80aafce1acbd89a03ec730e8849f553d8499716f8600858f03f1c39e5eb00236" -> "sha256:d3028ed6e0013d2f50c363b2472846d8f5a779e0a4b978eeaf2027ed3002f27a" [label=""];
  "sha256:d3028ed6e0013d2f50c363b2472846d8f5a779e0a4b978eeaf2027ed3002f27a" -> "sha256:19b9ddc6f8b95fc11284f6764eec42425ced0da08e5e9fa976d4f4068f583f79" [label=""];
}

