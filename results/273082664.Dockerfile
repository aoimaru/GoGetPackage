[app/sources/273082664.Dockerfile]
digraph {
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" [label="docker-image://docker.io/library/debian:jessie-slim" shape="ellipse"];
  "sha256:2e44505990ec45873aaec477613b85d3a5a0d0bae2e67486d315459f1b678839" [label="local://context" shape="ellipse"];
  "sha256:5a355c6097a4784ee84aabbf24a1512902dda35b5e929f3b90f53b8dee6e10fb" [label="copy{src=/image/scripts, dest=/tmp/}" shape="note"];
  "sha256:3a1d5b14a84725f2c47639baf46f2d57e8fc0735def75d042291c439f1c96c87" [label="/bin/sh -c chmod +x /tmp/*.sh &&     sh /tmp/env.sh &&     sh /tmp/common-tools.sh &&     sh /tmp/php7.0/apt.sh &&     sh /tmp/js-tools.sh &&     sh /tmp/composer.sh &&     sh /tmp/clean.sh" shape="box"];
  "sha256:f136cdc3e44c84c163574b314a7925b64037ef921db8575e5120910bad3687c5" [label="copy{src=/image/config, dest=/}" shape="note"];
  "sha256:2919d5c7f968eeb9256cc70838eb3e40708cf0779ec2b118f58984560109c011" [label="copy{src=/image/7.0/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:e57446ac8a5e67f6f8430ea7861c6a3a7a7f3293dcba110080de38f7174a83c1" [label="/bin/sh -c rm -f /etc/motd && chmod +x /etc/update-motd.d/* && ln -s /etc/update-motd.d/50-phpdocker /etc/motd" shape="box"];
  "sha256:588f349378ce739521a9a0179479494b118fccd0f220234a3bdfb865103337f5" [label="mkdir{path=/app}" shape="note"];
  "sha256:ae88637e1cd90d1b2505dd43d9e9230a030e846c39018af64f68d8ea19e625d3" [label="sha256:ae88637e1cd90d1b2505dd43d9e9230a030e846c39018af64f68d8ea19e625d3" shape="plaintext"];
  "sha256:cc47af5d092e6703c4baceaab393c283b63709ad6553bc047906458afb4c9b0d" -> "sha256:5a355c6097a4784ee84aabbf24a1512902dda35b5e929f3b90f53b8dee6e10fb" [label=""];
  "sha256:2e44505990ec45873aaec477613b85d3a5a0d0bae2e67486d315459f1b678839" -> "sha256:5a355c6097a4784ee84aabbf24a1512902dda35b5e929f3b90f53b8dee6e10fb" [label=""];
  "sha256:5a355c6097a4784ee84aabbf24a1512902dda35b5e929f3b90f53b8dee6e10fb" -> "sha256:3a1d5b14a84725f2c47639baf46f2d57e8fc0735def75d042291c439f1c96c87" [label=""];
  "sha256:3a1d5b14a84725f2c47639baf46f2d57e8fc0735def75d042291c439f1c96c87" -> "sha256:f136cdc3e44c84c163574b314a7925b64037ef921db8575e5120910bad3687c5" [label=""];
  "sha256:2e44505990ec45873aaec477613b85d3a5a0d0bae2e67486d315459f1b678839" -> "sha256:f136cdc3e44c84c163574b314a7925b64037ef921db8575e5120910bad3687c5" [label=""];
  "sha256:f136cdc3e44c84c163574b314a7925b64037ef921db8575e5120910bad3687c5" -> "sha256:2919d5c7f968eeb9256cc70838eb3e40708cf0779ec2b118f58984560109c011" [label=""];
  "sha256:2e44505990ec45873aaec477613b85d3a5a0d0bae2e67486d315459f1b678839" -> "sha256:2919d5c7f968eeb9256cc70838eb3e40708cf0779ec2b118f58984560109c011" [label=""];
  "sha256:2919d5c7f968eeb9256cc70838eb3e40708cf0779ec2b118f58984560109c011" -> "sha256:e57446ac8a5e67f6f8430ea7861c6a3a7a7f3293dcba110080de38f7174a83c1" [label=""];
  "sha256:e57446ac8a5e67f6f8430ea7861c6a3a7a7f3293dcba110080de38f7174a83c1" -> "sha256:588f349378ce739521a9a0179479494b118fccd0f220234a3bdfb865103337f5" [label=""];
  "sha256:588f349378ce739521a9a0179479494b118fccd0f220234a3bdfb865103337f5" -> "sha256:ae88637e1cd90d1b2505dd43d9e9230a030e846c39018af64f68d8ea19e625d3" [label=""];
}

