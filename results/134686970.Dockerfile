[app/sources/134686970.Dockerfile]
digraph {
  "sha256:ba8561722a01870ec42a072a48e3cca277062a061363cbaf7128e414f53dddb9" [label="local://context" shape="ellipse"];
  "sha256:352a3f0a46b41481528df212ba5504f3df576134f7ded8ef80197d33f5951930" [label="docker-image://docker.io/bkcsoft/pspsdk:latest" shape="ellipse"];
  "sha256:9476bca8e8eb63b05db58e0ec7309409616224d53e314d1e68a58768a36f3f4b" [label="/bin/sh -c git clone https://github.com/pspdev/psplibraries;    cd psplibraries;    ./libraries.sh" shape="box"];
  "sha256:d62e6502bbbe3961972e68b4980f536be37a3e97d4621a6e5103ae50f9d67446" [label="/bin/sh -c mkdir /plutoboy_psp" shape="box"];
  "sha256:aadb31988ce98b570f812f8af627b2d28dcba1e3aad655caa2ee4954b896b6fa" [label="copy{src=/, dest=/plutoboy_psp/}" shape="note"];
  "sha256:0d124e9f8dcd87fa4442de3a8a4ad0dead9dd198f2a81682421cbd1fae16500e" [label="mkdir{path=/plutoboy_psp/build/PSP}" shape="note"];
  "sha256:1b1a271c84fdc6230b2bfec853164138d6b5c6f78803183a9b9422b1ab5e6b2c" [label="sha256:1b1a271c84fdc6230b2bfec853164138d6b5c6f78803183a9b9422b1ab5e6b2c" shape="plaintext"];
  "sha256:352a3f0a46b41481528df212ba5504f3df576134f7ded8ef80197d33f5951930" -> "sha256:9476bca8e8eb63b05db58e0ec7309409616224d53e314d1e68a58768a36f3f4b" [label=""];
  "sha256:9476bca8e8eb63b05db58e0ec7309409616224d53e314d1e68a58768a36f3f4b" -> "sha256:d62e6502bbbe3961972e68b4980f536be37a3e97d4621a6e5103ae50f9d67446" [label=""];
  "sha256:d62e6502bbbe3961972e68b4980f536be37a3e97d4621a6e5103ae50f9d67446" -> "sha256:aadb31988ce98b570f812f8af627b2d28dcba1e3aad655caa2ee4954b896b6fa" [label=""];
  "sha256:ba8561722a01870ec42a072a48e3cca277062a061363cbaf7128e414f53dddb9" -> "sha256:aadb31988ce98b570f812f8af627b2d28dcba1e3aad655caa2ee4954b896b6fa" [label=""];
  "sha256:aadb31988ce98b570f812f8af627b2d28dcba1e3aad655caa2ee4954b896b6fa" -> "sha256:0d124e9f8dcd87fa4442de3a8a4ad0dead9dd198f2a81682421cbd1fae16500e" [label=""];
  "sha256:0d124e9f8dcd87fa4442de3a8a4ad0dead9dd198f2a81682421cbd1fae16500e" -> "sha256:1b1a271c84fdc6230b2bfec853164138d6b5c6f78803183a9b9422b1ab5e6b2c" [label=""];
}

