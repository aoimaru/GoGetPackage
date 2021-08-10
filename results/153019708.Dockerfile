[app/sources/153019708.Dockerfile]
digraph {
  "sha256:ae714d558edcd29e1949fd1862909c483646eea1c37becec2a3a333c79ceb4a0" [label="local://context" shape="ellipse"];
  "sha256:0434238921ec96df2db8fd0ac651df8367a6ecf3f425d9dca2dc96fd89555ee3" [label="docker-image://docker.io/abiosoft/caddy:0.10.6" shape="ellipse"];
  "sha256:a760dc332914047933825dd79f1e8130c7567dc711cbf61cded5d5321390850f" [label="copy{src=/compose/production/caddy/Caddyfile, dest=/etc/Caddyfile}" shape="note"];
  "sha256:b8ccf0b4d7c6b1e9180054c7be40140b0a1d2681295a50bf130423e4c595df01" [label="sha256:b8ccf0b4d7c6b1e9180054c7be40140b0a1d2681295a50bf130423e4c595df01" shape="plaintext"];
  "sha256:0434238921ec96df2db8fd0ac651df8367a6ecf3f425d9dca2dc96fd89555ee3" -> "sha256:a760dc332914047933825dd79f1e8130c7567dc711cbf61cded5d5321390850f" [label=""];
  "sha256:ae714d558edcd29e1949fd1862909c483646eea1c37becec2a3a333c79ceb4a0" -> "sha256:a760dc332914047933825dd79f1e8130c7567dc711cbf61cded5d5321390850f" [label=""];
  "sha256:a760dc332914047933825dd79f1e8130c7567dc711cbf61cded5d5321390850f" -> "sha256:b8ccf0b4d7c6b1e9180054c7be40140b0a1d2681295a50bf130423e4c595df01" [label=""];
}

