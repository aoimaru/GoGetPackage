[app/sources/252768279.Dockerfile]
digraph {
  "sha256:0f0ac5f772b5db55dc3a98e50a077be9279ce6d42919c2b777ab74d3840b7f68" [label="docker-image://docker.io/datadog/docker-dd-agent:11.0.5130@sha256:05312493a6c8041033ec89a05a381144fbf856446c89fb74d3b96d60471b1c83" shape="ellipse"];
  "sha256:c5ffab65eb0e08bf7523cf7b962838e088ed6f2a414997c6ec17b13473b10a34" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y dnsutils && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:4920ec712ee7b8cd55a4201d512a34d26e127f165b6d1c4568c58dc73248a395" [label="local://context" shape="ellipse"];
  "sha256:42f704c4c6215127ae68ba20ac3c5110af630230fd02e8276b3b72faaba4886a" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:54d9c27654dee32ac26b9e5a275a97376e567a37ffbb9b086780dfe0f962b3db" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:3870a4d58e7e0781652793f6632a698ba43e38c73092fb1e4f43d52a13f27321" [label="copy{src=/checks.d, dest=/checks.d/}" shape="note"];
  "sha256:f4acb34c66444e1c26a493899f6d44904d77b5e954111d901630d810b3e93fa2" [label="copy{src=/conf.d, dest=/conf.d/}" shape="note"];
  "sha256:3a0ef6c7e0137c32c723f17b4f1466a36c2207efa1e82c56969eb3e10959445e" [label="sha256:3a0ef6c7e0137c32c723f17b4f1466a36c2207efa1e82c56969eb3e10959445e" shape="plaintext"];
  "sha256:0f0ac5f772b5db55dc3a98e50a077be9279ce6d42919c2b777ab74d3840b7f68" -> "sha256:c5ffab65eb0e08bf7523cf7b962838e088ed6f2a414997c6ec17b13473b10a34" [label=""];
  "sha256:c5ffab65eb0e08bf7523cf7b962838e088ed6f2a414997c6ec17b13473b10a34" -> "sha256:42f704c4c6215127ae68ba20ac3c5110af630230fd02e8276b3b72faaba4886a" [label=""];
  "sha256:4920ec712ee7b8cd55a4201d512a34d26e127f165b6d1c4568c58dc73248a395" -> "sha256:42f704c4c6215127ae68ba20ac3c5110af630230fd02e8276b3b72faaba4886a" [label=""];
  "sha256:42f704c4c6215127ae68ba20ac3c5110af630230fd02e8276b3b72faaba4886a" -> "sha256:54d9c27654dee32ac26b9e5a275a97376e567a37ffbb9b086780dfe0f962b3db" [label=""];
  "sha256:54d9c27654dee32ac26b9e5a275a97376e567a37ffbb9b086780dfe0f962b3db" -> "sha256:3870a4d58e7e0781652793f6632a698ba43e38c73092fb1e4f43d52a13f27321" [label=""];
  "sha256:4920ec712ee7b8cd55a4201d512a34d26e127f165b6d1c4568c58dc73248a395" -> "sha256:3870a4d58e7e0781652793f6632a698ba43e38c73092fb1e4f43d52a13f27321" [label=""];
  "sha256:3870a4d58e7e0781652793f6632a698ba43e38c73092fb1e4f43d52a13f27321" -> "sha256:f4acb34c66444e1c26a493899f6d44904d77b5e954111d901630d810b3e93fa2" [label=""];
  "sha256:4920ec712ee7b8cd55a4201d512a34d26e127f165b6d1c4568c58dc73248a395" -> "sha256:f4acb34c66444e1c26a493899f6d44904d77b5e954111d901630d810b3e93fa2" [label=""];
  "sha256:f4acb34c66444e1c26a493899f6d44904d77b5e954111d901630d810b3e93fa2" -> "sha256:3a0ef6c7e0137c32c723f17b4f1466a36c2207efa1e82c56969eb3e10959445e" [label=""];
}
