[app/sources/473472910.Dockerfile]
digraph {
  "sha256:a20d87be098cd8f5ab170f93f04ffcfe93bbadb807c86943ed30fd61bf7e4b18" [label="docker-image://docker.io/library/rust:1.32-slim" shape="ellipse"];
  "sha256:dfe91b9d4a3971e710d974730bdfb187d833a22c8bb3d083dcc3807e81527547" [label="/bin/sh -c rustup component add clippy && cargo install cargo-fix --version 0.4.1" shape="box"];
  "sha256:7d47c25d528f6412b29cb2a2494102d2c3a7e513bf178b0d8e84d6754b27effe" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy --no-install-recommends   curl=7.52*   jq=1.5*   bash=4.4*   git=1:2.11*   libssl-dev=1.1*   zlib1g-dev=1:1.2*   pkg-config=0.29*   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:51595142fc404e219fe0469c78c4a8772a63995067369058efdeb6ad3f25a6be" [label="local://context" shape="ellipse"];
  "sha256:110ceb2b7c76d8c7e3aa8c19dd87cdaeccba43230088ecc6acb33db93befee46" [label="copy{src=/lib.sh, dest=/lib.sh}" shape="note"];
  "sha256:53b611c38a6daefe52e7066120e3e48c8806e2b08c5dc978453d8a672aa00b1b" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:849eaab5b5b0a9333d2a4d120e5694c68632fe1ba737309192f2ffa216686f7a" [label="sha256:849eaab5b5b0a9333d2a4d120e5694c68632fe1ba737309192f2ffa216686f7a" shape="plaintext"];
  "sha256:a20d87be098cd8f5ab170f93f04ffcfe93bbadb807c86943ed30fd61bf7e4b18" -> "sha256:dfe91b9d4a3971e710d974730bdfb187d833a22c8bb3d083dcc3807e81527547" [label=""];
  "sha256:dfe91b9d4a3971e710d974730bdfb187d833a22c8bb3d083dcc3807e81527547" -> "sha256:7d47c25d528f6412b29cb2a2494102d2c3a7e513bf178b0d8e84d6754b27effe" [label=""];
  "sha256:7d47c25d528f6412b29cb2a2494102d2c3a7e513bf178b0d8e84d6754b27effe" -> "sha256:110ceb2b7c76d8c7e3aa8c19dd87cdaeccba43230088ecc6acb33db93befee46" [label=""];
  "sha256:51595142fc404e219fe0469c78c4a8772a63995067369058efdeb6ad3f25a6be" -> "sha256:110ceb2b7c76d8c7e3aa8c19dd87cdaeccba43230088ecc6acb33db93befee46" [label=""];
  "sha256:110ceb2b7c76d8c7e3aa8c19dd87cdaeccba43230088ecc6acb33db93befee46" -> "sha256:53b611c38a6daefe52e7066120e3e48c8806e2b08c5dc978453d8a672aa00b1b" [label=""];
  "sha256:51595142fc404e219fe0469c78c4a8772a63995067369058efdeb6ad3f25a6be" -> "sha256:53b611c38a6daefe52e7066120e3e48c8806e2b08c5dc978453d8a672aa00b1b" [label=""];
  "sha256:53b611c38a6daefe52e7066120e3e48c8806e2b08c5dc978453d8a672aa00b1b" -> "sha256:849eaab5b5b0a9333d2a4d120e5694c68632fe1ba737309192f2ffa216686f7a" [label=""];
}

