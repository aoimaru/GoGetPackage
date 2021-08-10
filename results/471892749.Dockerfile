[app/sources/471892749.Dockerfile]
digraph {
  "sha256:72b00ea3966c0e00a80ccf7a3f024f6d41d3cd136c52d72e403d461224105be7" [label="local://context" shape="ellipse"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:9d7b4377e46d08a23b9ee323ef71b34a57042f1ec041d6b6b8bcf47edab0f606" [label="/bin/sh -c apt-get update &&  apt-get install git" shape="box"];
  "sha256:163d6a99c359a4c566dffc52f3ceba9a1430288f5b29d8aaf967d49a74cb2a67" [label="copy{src=/lib/helper.js, dest=/kubeless_rt/lib/}" shape="note"];
  "sha256:fbd101b299de95d79c29a73a61a982e36ef8d4afb8c563c8d0cf0881bf1de6e1" [label="copy{src=/kubeless.js, dest=/kubeless_rt/}" shape="note"];
  "sha256:cc4e4d3f05f498dffe53ebc6e1526c2441a8583620c691a4f545ec04072ff31e" [label="copy{src=/package.json, dest=/kubeless_rt/}" shape="note"];
  "sha256:31105a355f6642fba99030b7390df9e96f6adaa6d687134788c5e67294e20af1" [label="copy{src=/kubeless-npm-install.sh, dest=/}" shape="note"];
  "sha256:fab74ec849447f11477858a6be7ceb71490b5a46d012adc51404cd1c4a0a4e4a" [label="mkdir{path=/kubeless_rt}" shape="note"];
  "sha256:2e7107c65c23bbcbea62cc17894de76759b558502425d1a725b27d3c80df8a41" [label="/bin/sh -c npm install" shape="box"];
  "sha256:23590100b612f352fbc6966932475a252e6b08d72df2861cedcec667f43ab273" [label="sha256:23590100b612f352fbc6966932475a252e6b08d72df2861cedcec667f43ab273" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:9d7b4377e46d08a23b9ee323ef71b34a57042f1ec041d6b6b8bcf47edab0f606" [label=""];
  "sha256:9d7b4377e46d08a23b9ee323ef71b34a57042f1ec041d6b6b8bcf47edab0f606" -> "sha256:163d6a99c359a4c566dffc52f3ceba9a1430288f5b29d8aaf967d49a74cb2a67" [label=""];
  "sha256:72b00ea3966c0e00a80ccf7a3f024f6d41d3cd136c52d72e403d461224105be7" -> "sha256:163d6a99c359a4c566dffc52f3ceba9a1430288f5b29d8aaf967d49a74cb2a67" [label=""];
  "sha256:163d6a99c359a4c566dffc52f3ceba9a1430288f5b29d8aaf967d49a74cb2a67" -> "sha256:fbd101b299de95d79c29a73a61a982e36ef8d4afb8c563c8d0cf0881bf1de6e1" [label=""];
  "sha256:72b00ea3966c0e00a80ccf7a3f024f6d41d3cd136c52d72e403d461224105be7" -> "sha256:fbd101b299de95d79c29a73a61a982e36ef8d4afb8c563c8d0cf0881bf1de6e1" [label=""];
  "sha256:fbd101b299de95d79c29a73a61a982e36ef8d4afb8c563c8d0cf0881bf1de6e1" -> "sha256:cc4e4d3f05f498dffe53ebc6e1526c2441a8583620c691a4f545ec04072ff31e" [label=""];
  "sha256:72b00ea3966c0e00a80ccf7a3f024f6d41d3cd136c52d72e403d461224105be7" -> "sha256:cc4e4d3f05f498dffe53ebc6e1526c2441a8583620c691a4f545ec04072ff31e" [label=""];
  "sha256:cc4e4d3f05f498dffe53ebc6e1526c2441a8583620c691a4f545ec04072ff31e" -> "sha256:31105a355f6642fba99030b7390df9e96f6adaa6d687134788c5e67294e20af1" [label=""];
  "sha256:72b00ea3966c0e00a80ccf7a3f024f6d41d3cd136c52d72e403d461224105be7" -> "sha256:31105a355f6642fba99030b7390df9e96f6adaa6d687134788c5e67294e20af1" [label=""];
  "sha256:31105a355f6642fba99030b7390df9e96f6adaa6d687134788c5e67294e20af1" -> "sha256:fab74ec849447f11477858a6be7ceb71490b5a46d012adc51404cd1c4a0a4e4a" [label=""];
  "sha256:fab74ec849447f11477858a6be7ceb71490b5a46d012adc51404cd1c4a0a4e4a" -> "sha256:2e7107c65c23bbcbea62cc17894de76759b558502425d1a725b27d3c80df8a41" [label=""];
  "sha256:2e7107c65c23bbcbea62cc17894de76759b558502425d1a725b27d3c80df8a41" -> "sha256:23590100b612f352fbc6966932475a252e6b08d72df2861cedcec667f43ab273" [label=""];
}

