[app/sources/276758609.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:32761b4aaf8ac00699b8d001a1435c11f86f5c68bb6fcc31c3e3419d444c96d0" [label="/bin/sh -c yarn global add lerna" shape="box"];
  "sha256:5c9467e71a61936b8eec0b51beb60bb073d8928abb98e30b6f20738b7a5d4206" [label="/bin/sh -c yarn global add serve" shape="box"];
  "sha256:2c2633937ec468eda7f17e0bc92819640aa9f3ea3fef531bbe1e568f4bddfda2" [label="local://context" shape="ellipse"];
  "sha256:8b81cdef54cd195a771e279ecb5bf2e881252a23c74c9cf8fd25c40e1a6311db" [label="copy{src=/packages, dest=/packages}" shape="note"];
  "sha256:74d7a30297f14c336633f75ffcb7197175a61691e1a58f959aa596fe14a6700e" [label="copy{src=/lerna.json, dest=/lerna.json}" shape="note"];
  "sha256:8d45b943bccd4621ac495566ec72867a629867677c1bd91a287dc9ad3c63a994" [label="copy{src=/package.json, dest=/package.json}" shape="note"];
  "sha256:8be72c4ddffb176ec7bd7b9977b597282b31e2254e2a2f0a2231638f71ce005b" [label="/bin/sh -c lerna bootstrap" shape="box"];
  "sha256:c1056d28ac0ca1886cc7d84bd4a2b3c6f095ad997394d216f040da1f666447ba" [label="mkdir{path=/packages/agent-ui}" shape="note"];
  "sha256:7fcea44b4d06b9587702c502f7c6e6ffaf5bd91f7880a871147a961ea30f18c7" [label="/bin/sh -c yarn build" shape="box"];
  "sha256:a1c56c9a0dce8e4e4449afca1a6cc643dec416f1bacae8a57d35e57f9dded8cb" [label="sha256:a1c56c9a0dce8e4e4449afca1a6cc643dec416f1bacae8a57d35e57f9dded8cb" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:32761b4aaf8ac00699b8d001a1435c11f86f5c68bb6fcc31c3e3419d444c96d0" [label=""];
  "sha256:32761b4aaf8ac00699b8d001a1435c11f86f5c68bb6fcc31c3e3419d444c96d0" -> "sha256:5c9467e71a61936b8eec0b51beb60bb073d8928abb98e30b6f20738b7a5d4206" [label=""];
  "sha256:5c9467e71a61936b8eec0b51beb60bb073d8928abb98e30b6f20738b7a5d4206" -> "sha256:8b81cdef54cd195a771e279ecb5bf2e881252a23c74c9cf8fd25c40e1a6311db" [label=""];
  "sha256:2c2633937ec468eda7f17e0bc92819640aa9f3ea3fef531bbe1e568f4bddfda2" -> "sha256:8b81cdef54cd195a771e279ecb5bf2e881252a23c74c9cf8fd25c40e1a6311db" [label=""];
  "sha256:8b81cdef54cd195a771e279ecb5bf2e881252a23c74c9cf8fd25c40e1a6311db" -> "sha256:74d7a30297f14c336633f75ffcb7197175a61691e1a58f959aa596fe14a6700e" [label=""];
  "sha256:2c2633937ec468eda7f17e0bc92819640aa9f3ea3fef531bbe1e568f4bddfda2" -> "sha256:74d7a30297f14c336633f75ffcb7197175a61691e1a58f959aa596fe14a6700e" [label=""];
  "sha256:74d7a30297f14c336633f75ffcb7197175a61691e1a58f959aa596fe14a6700e" -> "sha256:8d45b943bccd4621ac495566ec72867a629867677c1bd91a287dc9ad3c63a994" [label=""];
  "sha256:2c2633937ec468eda7f17e0bc92819640aa9f3ea3fef531bbe1e568f4bddfda2" -> "sha256:8d45b943bccd4621ac495566ec72867a629867677c1bd91a287dc9ad3c63a994" [label=""];
  "sha256:8d45b943bccd4621ac495566ec72867a629867677c1bd91a287dc9ad3c63a994" -> "sha256:8be72c4ddffb176ec7bd7b9977b597282b31e2254e2a2f0a2231638f71ce005b" [label=""];
  "sha256:8be72c4ddffb176ec7bd7b9977b597282b31e2254e2a2f0a2231638f71ce005b" -> "sha256:c1056d28ac0ca1886cc7d84bd4a2b3c6f095ad997394d216f040da1f666447ba" [label=""];
  "sha256:c1056d28ac0ca1886cc7d84bd4a2b3c6f095ad997394d216f040da1f666447ba" -> "sha256:7fcea44b4d06b9587702c502f7c6e6ffaf5bd91f7880a871147a961ea30f18c7" [label=""];
  "sha256:7fcea44b4d06b9587702c502f7c6e6ffaf5bd91f7880a871147a961ea30f18c7" -> "sha256:a1c56c9a0dce8e4e4449afca1a6cc643dec416f1bacae8a57d35e57f9dded8cb" [label=""];
}

