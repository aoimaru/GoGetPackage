[app/sources/253095759.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:b0b542f7a61ae0124ec519d43addfc71a4357606eef8f2164f1c161a1e70d36c" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:884406d854549c170d8e96d15559f5facd3ad50d78af8cf990c536891025fb72" [label="/bin/sh -c apt-get install -y transmission-daemon ssh openssh-server whois sudo apache2 curl" shape="box"];
  "sha256:7862a5182f6b0d6a4641afd5a57531911c2e40f62b4075c72e82eff1e23a9021" [label="local://context" shape="ellipse"];
  "sha256:24793b69b17df8cccf9b8a677488e29ee92f0ed762085bc5540a17806737315f" [label="copy{src=/docker, dest=/docker}" shape="note"];
  "sha256:ce6fc43744ea47eb5d4468a3fde7baa72a7a8d5d99d904028e2198704a089c60" [label="/bin/sh -c bash /docker/scripts/static-configuration.sh &&   cp /docker/configurations/sshd_config /etc/ssh/sshd_config &&   addgroup sftp && touch /var/log/transmission.log" shape="box"];
  "sha256:867510509a3473d1d9d3ca4759cc6a94f6b0dac7bb090696746047de94e2530d" [label="sha256:867510509a3473d1d9d3ca4759cc6a94f6b0dac7bb090696746047de94e2530d" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:b0b542f7a61ae0124ec519d43addfc71a4357606eef8f2164f1c161a1e70d36c" [label=""];
  "sha256:b0b542f7a61ae0124ec519d43addfc71a4357606eef8f2164f1c161a1e70d36c" -> "sha256:884406d854549c170d8e96d15559f5facd3ad50d78af8cf990c536891025fb72" [label=""];
  "sha256:884406d854549c170d8e96d15559f5facd3ad50d78af8cf990c536891025fb72" -> "sha256:24793b69b17df8cccf9b8a677488e29ee92f0ed762085bc5540a17806737315f" [label=""];
  "sha256:7862a5182f6b0d6a4641afd5a57531911c2e40f62b4075c72e82eff1e23a9021" -> "sha256:24793b69b17df8cccf9b8a677488e29ee92f0ed762085bc5540a17806737315f" [label=""];
  "sha256:24793b69b17df8cccf9b8a677488e29ee92f0ed762085bc5540a17806737315f" -> "sha256:ce6fc43744ea47eb5d4468a3fde7baa72a7a8d5d99d904028e2198704a089c60" [label=""];
  "sha256:ce6fc43744ea47eb5d4468a3fde7baa72a7a8d5d99d904028e2198704a089c60" -> "sha256:867510509a3473d1d9d3ca4759cc6a94f6b0dac7bb090696746047de94e2530d" [label=""];
}

