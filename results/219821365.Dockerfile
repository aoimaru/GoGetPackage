[app/sources/219821365.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:befde99b01462b4f6af0e9dda6521b7f4cc8c2aae99cd4e90268bbce73e0e173" [label="/bin/sh -c apt-get update &&     apt-get install -y wireshark &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6f5301ed9ae80c86747a3c323361f648e9ea419b3386018717b4064d659f4a18" [label="/bin/sh -c dbus-uuidgen > /etc/machine-id" shape="box"];
  "sha256:09a79a99afd0e91c5c277590c77f74d4df6b90d4de2f3bb18b9533a710045f97" [label="local://context" shape="ellipse"];
  "sha256:308ba7c3df7c0fddb8c2465f011b6cd3dedc420ff08b32313222c37f94be94f1" [label="copy{src=/init.lua, dest=/usr/share/wireshark/init.lua}" shape="note"];
  "sha256:f084255d2594ce7076dc95f70eebc886cb2827efd012374a849db82b5e699fcb" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:48de78a1cade89a195172136cfddaa4cf38a3b5bb6de33085700a9261dc72dc6" [label="/bin/sh -c mkdir /pcap" shape="box"];
  "sha256:27d6cb876372d0ae5b427d24eb4436929d7033b19974a143937ec88390a76ebd" [label="sha256:27d6cb876372d0ae5b427d24eb4436929d7033b19974a143937ec88390a76ebd" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:befde99b01462b4f6af0e9dda6521b7f4cc8c2aae99cd4e90268bbce73e0e173" [label=""];
  "sha256:befde99b01462b4f6af0e9dda6521b7f4cc8c2aae99cd4e90268bbce73e0e173" -> "sha256:6f5301ed9ae80c86747a3c323361f648e9ea419b3386018717b4064d659f4a18" [label=""];
  "sha256:6f5301ed9ae80c86747a3c323361f648e9ea419b3386018717b4064d659f4a18" -> "sha256:308ba7c3df7c0fddb8c2465f011b6cd3dedc420ff08b32313222c37f94be94f1" [label=""];
  "sha256:09a79a99afd0e91c5c277590c77f74d4df6b90d4de2f3bb18b9533a710045f97" -> "sha256:308ba7c3df7c0fddb8c2465f011b6cd3dedc420ff08b32313222c37f94be94f1" [label=""];
  "sha256:308ba7c3df7c0fddb8c2465f011b6cd3dedc420ff08b32313222c37f94be94f1" -> "sha256:f084255d2594ce7076dc95f70eebc886cb2827efd012374a849db82b5e699fcb" [label=""];
  "sha256:f084255d2594ce7076dc95f70eebc886cb2827efd012374a849db82b5e699fcb" -> "sha256:48de78a1cade89a195172136cfddaa4cf38a3b5bb6de33085700a9261dc72dc6" [label=""];
  "sha256:48de78a1cade89a195172136cfddaa4cf38a3b5bb6de33085700a9261dc72dc6" -> "sha256:27d6cb876372d0ae5b427d24eb4436929d7033b19974a143937ec88390a76ebd" [label=""];
}

