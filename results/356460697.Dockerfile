[app/sources/356460697.Dockerfile]
digraph {
  "sha256:ca755150b6588c13558d118a3d8386921bcfbbac972a7ec30f46f8ac540954b5" [label="local://context" shape="ellipse"];
  "sha256:43ab24e923c85dc5f4ee108bdb0e6d4467433d614d277fa40d575d8dc8aadc44" [label="docker-image://registry.cn-beijing.aliyuncs.com/opendcp/golang-env:latest@sha256:e2f2edfbfc62fce6552038cb452c33ef2df961cb4e07aac418bfc80f41e101c0" shape="ellipse"];
  "sha256:5110a313e83360a9f8202bf96f131b7eefba6827542b8828e20915ee7708b30a" [label="copy{src=/, dest=/go/src/weibo.com/opendcp/jupiter}" shape="note"];
  "sha256:510d91005807ac53bc0fd284fdeedb7f3a2197979c0e91aeee68e25a5b941da0" [label="mkdir{path=/go/src/weibo.com/opendcp/jupiter}" shape="note"];
  "sha256:727e580097f7989157b7d184a3b31c1cd57a4b76ec4093d67f6283163b797bb7" [label="/bin/sh -c mkdir keys" shape="box"];
  "sha256:14f47c9ba4f387ac4e4231d11bf43c42461a353f9f6953935cb5b426b31bdcf1" [label="/bin/sh -c go build" shape="box"];
  "sha256:4022b51aa9cce47dcd8d41cb486e85bd705e2bf21dffb457f0cef16d70299fa1" [label="sha256:4022b51aa9cce47dcd8d41cb486e85bd705e2bf21dffb457f0cef16d70299fa1" shape="plaintext"];
  "sha256:43ab24e923c85dc5f4ee108bdb0e6d4467433d614d277fa40d575d8dc8aadc44" -> "sha256:5110a313e83360a9f8202bf96f131b7eefba6827542b8828e20915ee7708b30a" [label=""];
  "sha256:ca755150b6588c13558d118a3d8386921bcfbbac972a7ec30f46f8ac540954b5" -> "sha256:5110a313e83360a9f8202bf96f131b7eefba6827542b8828e20915ee7708b30a" [label=""];
  "sha256:5110a313e83360a9f8202bf96f131b7eefba6827542b8828e20915ee7708b30a" -> "sha256:510d91005807ac53bc0fd284fdeedb7f3a2197979c0e91aeee68e25a5b941da0" [label=""];
  "sha256:510d91005807ac53bc0fd284fdeedb7f3a2197979c0e91aeee68e25a5b941da0" -> "sha256:727e580097f7989157b7d184a3b31c1cd57a4b76ec4093d67f6283163b797bb7" [label=""];
  "sha256:727e580097f7989157b7d184a3b31c1cd57a4b76ec4093d67f6283163b797bb7" -> "sha256:14f47c9ba4f387ac4e4231d11bf43c42461a353f9f6953935cb5b426b31bdcf1" [label=""];
  "sha256:14f47c9ba4f387ac4e4231d11bf43c42461a353f9f6953935cb5b426b31bdcf1" -> "sha256:4022b51aa9cce47dcd8d41cb486e85bd705e2bf21dffb457f0cef16d70299fa1" [label=""];
}

