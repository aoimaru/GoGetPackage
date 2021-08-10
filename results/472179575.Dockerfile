[app/sources/472179575.Dockerfile]
digraph {
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" [label="local://context" shape="ellipse"];
  "sha256:5ac5567ad1f1d072a4791f552be1767a32995bbd879c0f536bc80dccdc3fbc52" [label="docker-image://docker.io/moiot/mysql:5.7.22-pmm" shape="ellipse"];
  "sha256:4317d0610ec2b777b3dbe567f386eb0cd494d3eec8310875cc4e6d669a6e5d65" [label="copy{src=/supervise, dest=/agent/supervise}" shape="note"];
  "sha256:157f2473a05a171e54747c7167a730cee09d438779213243bea0d210186482e8" [label="copy{src=/mysql-agent, dest=/agent/mysql-agent}" shape="note"];
  "sha256:c2d11b56d9209723b3b283ea764742756844e2c9dc9f8f4d0112e6f2f2290a66" [label="copy{src=/mysql-agent-tear-down, dest=/agent/mysql-agent-tear-down}" shape="note"];
  "sha256:ee5e663680f9f2a722bbe48cea41efb35bd9a13c0796a0eeb74bec47f754a580" [label="copy{src=/mysql-agent-service-boot, dest=/agent/mysql-agent-service-boot}" shape="note"];
  "sha256:878b9c432b50800451eb60b4675937537582b528ee97a7bcc89438651b99be6b" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:329ef83fb937d7e8c9fa2f3f93fa95f3e51e7ffe1f70f6dc59f4ddb67a0030d7" [label="sha256:329ef83fb937d7e8c9fa2f3f93fa95f3e51e7ffe1f70f6dc59f4ddb67a0030d7" shape="plaintext"];
  "sha256:5ac5567ad1f1d072a4791f552be1767a32995bbd879c0f536bc80dccdc3fbc52" -> "sha256:4317d0610ec2b777b3dbe567f386eb0cd494d3eec8310875cc4e6d669a6e5d65" [label=""];
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" -> "sha256:4317d0610ec2b777b3dbe567f386eb0cd494d3eec8310875cc4e6d669a6e5d65" [label=""];
  "sha256:4317d0610ec2b777b3dbe567f386eb0cd494d3eec8310875cc4e6d669a6e5d65" -> "sha256:157f2473a05a171e54747c7167a730cee09d438779213243bea0d210186482e8" [label=""];
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" -> "sha256:157f2473a05a171e54747c7167a730cee09d438779213243bea0d210186482e8" [label=""];
  "sha256:157f2473a05a171e54747c7167a730cee09d438779213243bea0d210186482e8" -> "sha256:c2d11b56d9209723b3b283ea764742756844e2c9dc9f8f4d0112e6f2f2290a66" [label=""];
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" -> "sha256:c2d11b56d9209723b3b283ea764742756844e2c9dc9f8f4d0112e6f2f2290a66" [label=""];
  "sha256:c2d11b56d9209723b3b283ea764742756844e2c9dc9f8f4d0112e6f2f2290a66" -> "sha256:ee5e663680f9f2a722bbe48cea41efb35bd9a13c0796a0eeb74bec47f754a580" [label=""];
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" -> "sha256:ee5e663680f9f2a722bbe48cea41efb35bd9a13c0796a0eeb74bec47f754a580" [label=""];
  "sha256:ee5e663680f9f2a722bbe48cea41efb35bd9a13c0796a0eeb74bec47f754a580" -> "sha256:878b9c432b50800451eb60b4675937537582b528ee97a7bcc89438651b99be6b" [label=""];
  "sha256:6af02fae5568c3fbc90d9c6e32538665a025fcc1d11216233e8ec61812995eac" -> "sha256:878b9c432b50800451eb60b4675937537582b528ee97a7bcc89438651b99be6b" [label=""];
  "sha256:878b9c432b50800451eb60b4675937537582b528ee97a7bcc89438651b99be6b" -> "sha256:329ef83fb937d7e8c9fa2f3f93fa95f3e51e7ffe1f70f6dc59f4ddb67a0030d7" [label=""];
}

