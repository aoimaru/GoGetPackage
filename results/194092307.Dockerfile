[app/sources/194092307.Dockerfile]
digraph {
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" [label="docker-image://docker.io/library/openjdk:8-jre" shape="ellipse"];
  "sha256:41337754b46db339cf0eda75874b24eddc6abc02c8e735c6267b75d5e62e118c" [label="local://context" shape="ellipse"];
  "sha256:9bccf4ac587493cfa95f3433f4674d3cdc2933ce61c93de1bf7e76974d22c456" [label="copy{src=/cache, dest=/app/cache}" shape="note"];
  "sha256:209036aec287b0c40f4a1aa483375ef269895e912000e2e69084f4d84cfea15a" [label="copy{src=/target/titan-1.0.jar, dest=/app/titan-1.0.jar}" shape="note"];
  "sha256:9e81a5eb6910fdc1a5706431d191b0825eb6f7cc732ca4bc53fe8acd37599da2" [label="copy{src=/config, dest=/app/config}" shape="note"];
  "sha256:0df5ee475c6af82c46cd64a48369944a08c96c25148819aa050c25389b52f07c" [label="mkdir{path=/app}" shape="note"];
  "sha256:6d48f74881bfe3fd251915aa40ecc948ae346b65b8b2219d56a6e0b4e68b3260" [label="sha256:6d48f74881bfe3fd251915aa40ecc948ae346b65b8b2219d56a6e0b4e68b3260" shape="plaintext"];
  "sha256:4667316f3a52dc8a4d7fd898240f26a8adfa16866dbc599287d190368906b84e" -> "sha256:9bccf4ac587493cfa95f3433f4674d3cdc2933ce61c93de1bf7e76974d22c456" [label=""];
  "sha256:41337754b46db339cf0eda75874b24eddc6abc02c8e735c6267b75d5e62e118c" -> "sha256:9bccf4ac587493cfa95f3433f4674d3cdc2933ce61c93de1bf7e76974d22c456" [label=""];
  "sha256:9bccf4ac587493cfa95f3433f4674d3cdc2933ce61c93de1bf7e76974d22c456" -> "sha256:209036aec287b0c40f4a1aa483375ef269895e912000e2e69084f4d84cfea15a" [label=""];
  "sha256:41337754b46db339cf0eda75874b24eddc6abc02c8e735c6267b75d5e62e118c" -> "sha256:209036aec287b0c40f4a1aa483375ef269895e912000e2e69084f4d84cfea15a" [label=""];
  "sha256:209036aec287b0c40f4a1aa483375ef269895e912000e2e69084f4d84cfea15a" -> "sha256:9e81a5eb6910fdc1a5706431d191b0825eb6f7cc732ca4bc53fe8acd37599da2" [label=""];
  "sha256:41337754b46db339cf0eda75874b24eddc6abc02c8e735c6267b75d5e62e118c" -> "sha256:9e81a5eb6910fdc1a5706431d191b0825eb6f7cc732ca4bc53fe8acd37599da2" [label=""];
  "sha256:9e81a5eb6910fdc1a5706431d191b0825eb6f7cc732ca4bc53fe8acd37599da2" -> "sha256:0df5ee475c6af82c46cd64a48369944a08c96c25148819aa050c25389b52f07c" [label=""];
  "sha256:0df5ee475c6af82c46cd64a48369944a08c96c25148819aa050c25389b52f07c" -> "sha256:6d48f74881bfe3fd251915aa40ecc948ae346b65b8b2219d56a6e0b4e68b3260" [label=""];
}

