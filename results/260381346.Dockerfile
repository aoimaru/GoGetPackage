[app/sources/260381346.Dockerfile]
digraph {
  "sha256:3002d9dc44b89887ee50324d829cd9d906d10b3316a2c2f02f8e023901131bc7" [label="local://context" shape="ellipse"];
  "sha256:450116724cb6d0fac856cbd2681b516ba480a1c4a7c7ee63c70ad925a31fb03d" [label="docker-image://docker.io/library/logstash:2.4.0-1" shape="ellipse"];
  "sha256:0fc1ded8d6107858bf2e337002ef8d4ee02b95e300dc090f4e09fdf9251c0482" [label="copy{src=/config, dest=/etc/logstash/conf.d}" shape="note"];
  "sha256:6793c2a9abc10d4e27753ad5db3345f697085455943f4fce05a52354c6ea0728" [label="sha256:6793c2a9abc10d4e27753ad5db3345f697085455943f4fce05a52354c6ea0728" shape="plaintext"];
  "sha256:450116724cb6d0fac856cbd2681b516ba480a1c4a7c7ee63c70ad925a31fb03d" -> "sha256:0fc1ded8d6107858bf2e337002ef8d4ee02b95e300dc090f4e09fdf9251c0482" [label=""];
  "sha256:3002d9dc44b89887ee50324d829cd9d906d10b3316a2c2f02f8e023901131bc7" -> "sha256:0fc1ded8d6107858bf2e337002ef8d4ee02b95e300dc090f4e09fdf9251c0482" [label=""];
  "sha256:0fc1ded8d6107858bf2e337002ef8d4ee02b95e300dc090f4e09fdf9251c0482" -> "sha256:6793c2a9abc10d4e27753ad5db3345f697085455943f4fce05a52354c6ea0728" [label=""];
}

