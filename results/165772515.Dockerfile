[app/sources/165772515.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:b9276a6566859cdd24b028749b97c41cdc9a8d32254c4010394877b28cc0e982" [label="/bin/sh -c apk --no-cache add \ti3lock \timagemagick \tpy-dbus \tpy-gobject \tscrot \tttf-liberation \txkeyboard-config" shape="box"];
  "sha256:30768339a87c7ba0d6e8e6f62d4a32fd71820a57b045426b6ace73ba7dec0f44" [label="local://context" shape="ellipse"];
  "sha256:5dac30eec9d219223df33b256fb353d2f9d9c358005017faa9ad6efd297215d7" [label="copy{src=/buttslock.py, dest=/},copy{src=/buttslock.sh, dest=/},copy{src=/lock.png, dest=/}" shape="note"];
  "sha256:4d69cbbf05eef3898b34e49d9c2fe6639163e3ee780f7b0275780f11bb078fea" [label="sha256:4d69cbbf05eef3898b34e49d9c2fe6639163e3ee780f7b0275780f11bb078fea" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b9276a6566859cdd24b028749b97c41cdc9a8d32254c4010394877b28cc0e982" [label=""];
  "sha256:b9276a6566859cdd24b028749b97c41cdc9a8d32254c4010394877b28cc0e982" -> "sha256:5dac30eec9d219223df33b256fb353d2f9d9c358005017faa9ad6efd297215d7" [label=""];
  "sha256:30768339a87c7ba0d6e8e6f62d4a32fd71820a57b045426b6ace73ba7dec0f44" -> "sha256:5dac30eec9d219223df33b256fb353d2f9d9c358005017faa9ad6efd297215d7" [label=""];
  "sha256:5dac30eec9d219223df33b256fb353d2f9d9c358005017faa9ad6efd297215d7" -> "sha256:4d69cbbf05eef3898b34e49d9c2fe6639163e3ee780f7b0275780f11bb078fea" [label=""];
}

