[app/sources/346803871.Dockerfile]
digraph {
  "sha256:87acc3184083a4445abac2cdc7fb238ef2860a7d70454c089f2fe2cdec72c8c3" [label="docker-image://docker.io/prestashop/base:7.1-apache" shape="ellipse"];
  "sha256:8f3b04f38a0ff4c92ccc00e8704dcdf06fb3c06e6a0c9aded79f2c02b1121f51" [label="https://www.prestashop.com/download/old/prestashop_1.7.5.2.zip" shape="ellipse"];
  "sha256:9838d7993add10278903f98f2394c888047ac0dae82a57d3041d3eb77c8e7b38" [label="copy{src=/prestashop_1.7.5.2.zip, dest=/tmp/prestashop.zip}" shape="note"];
  "sha256:5d768fe923f0aa5e281e6f39272299baa50198cbfbbc5e46d23cb2a9e0f4dc69" [label="/bin/sh -c mkdir -p /tmp/data-ps \t&& unzip -q /tmp/prestashop.zip -d /tmp/data-ps/ \t&& bash /tmp/ps-extractor.sh /tmp/data-ps \t&& rm /tmp/prestashop.zip" shape="box"];
  "sha256:efb9b8b3f6df0f4ea41390afb1b6b43982abe9caf6e947c8493f4455a4e97b68" [label="sha256:efb9b8b3f6df0f4ea41390afb1b6b43982abe9caf6e947c8493f4455a4e97b68" shape="plaintext"];
  "sha256:87acc3184083a4445abac2cdc7fb238ef2860a7d70454c089f2fe2cdec72c8c3" -> "sha256:9838d7993add10278903f98f2394c888047ac0dae82a57d3041d3eb77c8e7b38" [label=""];
  "sha256:8f3b04f38a0ff4c92ccc00e8704dcdf06fb3c06e6a0c9aded79f2c02b1121f51" -> "sha256:9838d7993add10278903f98f2394c888047ac0dae82a57d3041d3eb77c8e7b38" [label=""];
  "sha256:9838d7993add10278903f98f2394c888047ac0dae82a57d3041d3eb77c8e7b38" -> "sha256:5d768fe923f0aa5e281e6f39272299baa50198cbfbbc5e46d23cb2a9e0f4dc69" [label=""];
  "sha256:5d768fe923f0aa5e281e6f39272299baa50198cbfbbc5e46d23cb2a9e0f4dc69" -> "sha256:efb9b8b3f6df0f4ea41390afb1b6b43982abe9caf6e947c8493f4455a4e97b68" [label=""];
}

