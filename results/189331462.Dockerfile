[app/sources/189331462.Dockerfile]
digraph {
  "sha256:c43fefe63e4d4bbf2e4be048fe75955e150128e190aba6a671981bb955635df9" [label="docker-image://registry.opensource.zalan.do/stups/openjdk:latest@sha256:4306d88a56041d9ecd2d784c4fbc703faed34560485ccd38c9cee7a73320a998" shape="ellipse"];
  "sha256:5ee375a7cb610a3eb505db8ab2dd1c88634bb32ab69e4e4cb3f0eacfe7331d27" [label="local://context" shape="ellipse"];
  "sha256:b5e15cb95e4ba435161900d68dbd07e66cb471e1808997ee16d72d0747276d74" [label="copy{src=/target/even.jar, dest=/}" shape="note"];
  "sha256:ad43be39d53856056bc889f5eb074e688b14af67ad051881b2ccc0fe38a6d225" [label="copy{src=/resources/api/even-api.yaml, dest=/zalando-apis/}" shape="note"];
  "sha256:552ca637482dd78baf0eccfd2e21c35ec21830f11225a549836d60943b560530" [label="sha256:552ca637482dd78baf0eccfd2e21c35ec21830f11225a549836d60943b560530" shape="plaintext"];
  "sha256:c43fefe63e4d4bbf2e4be048fe75955e150128e190aba6a671981bb955635df9" -> "sha256:b5e15cb95e4ba435161900d68dbd07e66cb471e1808997ee16d72d0747276d74" [label=""];
  "sha256:5ee375a7cb610a3eb505db8ab2dd1c88634bb32ab69e4e4cb3f0eacfe7331d27" -> "sha256:b5e15cb95e4ba435161900d68dbd07e66cb471e1808997ee16d72d0747276d74" [label=""];
  "sha256:b5e15cb95e4ba435161900d68dbd07e66cb471e1808997ee16d72d0747276d74" -> "sha256:ad43be39d53856056bc889f5eb074e688b14af67ad051881b2ccc0fe38a6d225" [label=""];
  "sha256:5ee375a7cb610a3eb505db8ab2dd1c88634bb32ab69e4e4cb3f0eacfe7331d27" -> "sha256:ad43be39d53856056bc889f5eb074e688b14af67ad051881b2ccc0fe38a6d225" [label=""];
  "sha256:ad43be39d53856056bc889f5eb074e688b14af67ad051881b2ccc0fe38a6d225" -> "sha256:552ca637482dd78baf0eccfd2e21c35ec21830f11225a549836d60943b560530" [label=""];
}

