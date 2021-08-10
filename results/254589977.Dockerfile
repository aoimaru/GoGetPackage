[app/sources/254589977.Dockerfile]
digraph {
  "sha256:3adf6679ccecaf5ac95470ccc490ce63e7ec05a59d5ecbc0906a1cfc8f3afe64" [label="docker-image://docker.io/p4lang/behavioral-model:latest" shape="ellipse"];
  "sha256:6b2277164eacb749cbd58c7c1ba23641837a082c933e82421cc0d91572d759f1" [label="local://context" shape="ellipse"];
  "sha256:7dac1f308e7598e306167b46b466c56647424a4dfecbd18736659c9dcf7cf2bf" [label="copy{src=/, dest=/p4c/}" shape="note"];
  "sha256:0e616659b21879a5f38838cf9390fa158e01907a56417baa2809ab51ef3ecc68" [label="mkdir{path=/p4c}" shape="note"];
  "sha256:efba008439abc7654c3eea5636343d1697bf3f6143de0948aa2c80bc4c64f1ed" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends $P4C_DEPS $P4C_RUNTIME_DEPS &&     pip install tenjin &&     mkdir build &&     cd build &&     cmake .. '-DCMAKE_CXX_FLAGS:STRING=-O3' &&     make &&     make install &&     /usr/local/bin/ccache -p -s &&     (       (test \"$IMAGE_TYPE\" = \"build\" &&         apt-get purge -y $P4C_DEPS &&         apt-get autoremove --purge -y &&         rm -rf /p4c /var/cache/apt/* /var/lib/apt/lists/* &&         echo 'Build image ready') ||       (test \"$IMAGE_TYPE\" = \"test\" &&         echo 'Test image ready')     )" shape="box"];
  "sha256:abb6eeece757b997f17a75a9634205203ec54aeb0d122c9e675da102cb826ada" [label="sha256:abb6eeece757b997f17a75a9634205203ec54aeb0d122c9e675da102cb826ada" shape="plaintext"];
  "sha256:3adf6679ccecaf5ac95470ccc490ce63e7ec05a59d5ecbc0906a1cfc8f3afe64" -> "sha256:7dac1f308e7598e306167b46b466c56647424a4dfecbd18736659c9dcf7cf2bf" [label=""];
  "sha256:6b2277164eacb749cbd58c7c1ba23641837a082c933e82421cc0d91572d759f1" -> "sha256:7dac1f308e7598e306167b46b466c56647424a4dfecbd18736659c9dcf7cf2bf" [label=""];
  "sha256:7dac1f308e7598e306167b46b466c56647424a4dfecbd18736659c9dcf7cf2bf" -> "sha256:0e616659b21879a5f38838cf9390fa158e01907a56417baa2809ab51ef3ecc68" [label=""];
  "sha256:0e616659b21879a5f38838cf9390fa158e01907a56417baa2809ab51ef3ecc68" -> "sha256:efba008439abc7654c3eea5636343d1697bf3f6143de0948aa2c80bc4c64f1ed" [label=""];
  "sha256:efba008439abc7654c3eea5636343d1697bf3f6143de0948aa2c80bc4c64f1ed" -> "sha256:abb6eeece757b997f17a75a9634205203ec54aeb0d122c9e675da102cb826ada" [label=""];
}

