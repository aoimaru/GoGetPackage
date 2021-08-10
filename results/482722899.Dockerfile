[app/sources/482722899.Dockerfile]
digraph {
  "sha256:068c54df2445a2d67ce98e19b78be6326c3a6ff28f2fe694c5c06803f0062896" [label="docker-image://docker.io/stackbrew/debian:jessie" shape="ellipse"];
  "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:32ac7d80f8952936f83663b3e212e826b78456158fb45e2fe5920ca3a0cce721" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:7ad56c571c3e427b05b92ad7badb7e316742ee114db2822caa97d3ec69addd72" [label="/bin/sh -c wget http://dl.4players.de/ts/releases/3.0.10.3/teamspeak3-server_linux-amd64-3.0.10.3.tar.gz -O /tmp/teamspeak.tar.gz && tar zxf /tmp/teamspeak.tar.gz -C /opt && mv /opt/teamspeak3-server_* /opt/teamspeak" shape="box"];
  "sha256:c85a594acc12616fdd3704b3ed7abed1d3bddd77e9efa153d1e2fe54424cf98f" [label="sha256:c85a594acc12616fdd3704b3ed7abed1d3bddd77e9efa153d1e2fe54424cf98f" shape="plaintext"];
  "sha256:068c54df2445a2d67ce98e19b78be6326c3a6ff28f2fe694c5c06803f0062896" -> "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" [label=""];
  "sha256:63bc59e08c8462d7816418f906ff9f54ef7bdab22fb184c99a144089816342a2" -> "sha256:32ac7d80f8952936f83663b3e212e826b78456158fb45e2fe5920ca3a0cce721" [label=""];
  "sha256:32ac7d80f8952936f83663b3e212e826b78456158fb45e2fe5920ca3a0cce721" -> "sha256:7ad56c571c3e427b05b92ad7badb7e316742ee114db2822caa97d3ec69addd72" [label=""];
  "sha256:7ad56c571c3e427b05b92ad7badb7e316742ee114db2822caa97d3ec69addd72" -> "sha256:c85a594acc12616fdd3704b3ed7abed1d3bddd77e9efa153d1e2fe54424cf98f" [label=""];
}

