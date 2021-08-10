[app/sources/309792877.Dockerfile]
digraph {
  "sha256:6cc058497c7332718d59a1e694dab6940bcfeb911f4ffa0aa02669df4c826520" [label="docker-image://gcr.io/linkerd-io/base:2019-02-19.01@sha256:8268560d16145c66fe06497fd66d671fb9fe84ea48f284112e55971a3aa83cbe" shape="ellipse"];
  "sha256:93cddeda0570b60c1dc4c423a958d485c110cf26070841e0256254cb99c604e3" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c02b93bd980ebf3f229aeeac080f074562f7a279863d5a9ef1466afe671dda40" [label="/bin/sh -c apt-get install -y ca-certificates" shape="box"];
  "sha256:61e44aee2f058fd74a7a8781f167accab910a8e1436d8e2aa8788ef1fd65e59f" [label="docker-image://docker.io/library/golang:1.11.6-stretch" shape="ellipse"];
  "sha256:89197d157c4d670c45d7dab23c4bfd460551af9a21e0d2215696f37a4e982f5d" [label="mkdir{path=/go/src/github.com/buoyantio/bb}" shape="note"];
  "sha256:c0062f129a31bb36c26e23b4d40746a1b2e49e3481cf2ca64c4c2b4f715afd77" [label="local://context" shape="ellipse"];
  "sha256:fb2de91c28ed7993a33ff36cdaef09dca3035370a446e59102c0aa22b60e852c" [label="copy{src=/, dest=/go/src/github.com/buoyantio/bb}" shape="note"];
  "sha256:d2e179686edf448ae18b6d7233c73d5df0beb951e6e57c6854ab3bc5e2bceffa" [label="/bin/sh -c mkdir -p /out" shape="box"];
  "sha256:46821479999f9f01f4f9ff17561f268737530963af31f2c30a358b54b35f94d8" [label="/bin/sh -c ./bin/dep ensure" shape="box"];
  "sha256:8b1935feb4bf3b3b067fedcc9d0d9866fcb940e103d37b8807b440f611153b7d" [label="/bin/sh -c go build -o /out/bb ." shape="box"];
  "sha256:d38bb8bea17dfcc04aefa2823a18bd55d84bb4328b8ec636fded4db49e3386d6" [label="copy{src=/out, dest=/out}" shape="note"];
  "sha256:9108de6a8208f9efb0a7c2e4cb7278a136ff2af42ea4d9fe8736f4c3ad546eae" [label="sha256:9108de6a8208f9efb0a7c2e4cb7278a136ff2af42ea4d9fe8736f4c3ad546eae" shape="plaintext"];
  "sha256:6cc058497c7332718d59a1e694dab6940bcfeb911f4ffa0aa02669df4c826520" -> "sha256:93cddeda0570b60c1dc4c423a958d485c110cf26070841e0256254cb99c604e3" [label=""];
  "sha256:93cddeda0570b60c1dc4c423a958d485c110cf26070841e0256254cb99c604e3" -> "sha256:c02b93bd980ebf3f229aeeac080f074562f7a279863d5a9ef1466afe671dda40" [label=""];
  "sha256:61e44aee2f058fd74a7a8781f167accab910a8e1436d8e2aa8788ef1fd65e59f" -> "sha256:89197d157c4d670c45d7dab23c4bfd460551af9a21e0d2215696f37a4e982f5d" [label=""];
  "sha256:89197d157c4d670c45d7dab23c4bfd460551af9a21e0d2215696f37a4e982f5d" -> "sha256:fb2de91c28ed7993a33ff36cdaef09dca3035370a446e59102c0aa22b60e852c" [label=""];
  "sha256:c0062f129a31bb36c26e23b4d40746a1b2e49e3481cf2ca64c4c2b4f715afd77" -> "sha256:fb2de91c28ed7993a33ff36cdaef09dca3035370a446e59102c0aa22b60e852c" [label=""];
  "sha256:fb2de91c28ed7993a33ff36cdaef09dca3035370a446e59102c0aa22b60e852c" -> "sha256:d2e179686edf448ae18b6d7233c73d5df0beb951e6e57c6854ab3bc5e2bceffa" [label=""];
  "sha256:d2e179686edf448ae18b6d7233c73d5df0beb951e6e57c6854ab3bc5e2bceffa" -> "sha256:46821479999f9f01f4f9ff17561f268737530963af31f2c30a358b54b35f94d8" [label=""];
  "sha256:46821479999f9f01f4f9ff17561f268737530963af31f2c30a358b54b35f94d8" -> "sha256:8b1935feb4bf3b3b067fedcc9d0d9866fcb940e103d37b8807b440f611153b7d" [label=""];
  "sha256:c02b93bd980ebf3f229aeeac080f074562f7a279863d5a9ef1466afe671dda40" -> "sha256:d38bb8bea17dfcc04aefa2823a18bd55d84bb4328b8ec636fded4db49e3386d6" [label=""];
  "sha256:8b1935feb4bf3b3b067fedcc9d0d9866fcb940e103d37b8807b440f611153b7d" -> "sha256:d38bb8bea17dfcc04aefa2823a18bd55d84bb4328b8ec636fded4db49e3386d6" [label=""];
  "sha256:d38bb8bea17dfcc04aefa2823a18bd55d84bb4328b8ec636fded4db49e3386d6" -> "sha256:9108de6a8208f9efb0a7c2e4cb7278a136ff2af42ea4d9fe8736f4c3ad546eae" [label=""];
}

