[app/sources/240795146.Dockerfile]
digraph {
  "sha256:f975e2d0881dd82d4921034f542a7322004d5ee19366360fdb5206ad5a9b4b01" [label="local://context" shape="ellipse"];
  "sha256:332f6acaf9fa60d27338b5914704dca8bb6a9d7517dc58c7bf0e89d4559b8f76" [label="copy{src=/rootfs.tar, dest=/}" shape="note"];
  "sha256:d2bb55c2b004593e5be3c07a95e9124f12ef89a9cd9352fd4abbde207627969e" [label="sha256:d2bb55c2b004593e5be3c07a95e9124f12ef89a9cd9352fd4abbde207627969e" shape="plaintext"];
  "sha256:f975e2d0881dd82d4921034f542a7322004d5ee19366360fdb5206ad5a9b4b01" -> "sha256:332f6acaf9fa60d27338b5914704dca8bb6a9d7517dc58c7bf0e89d4559b8f76" [label=""];
  "sha256:332f6acaf9fa60d27338b5914704dca8bb6a9d7517dc58c7bf0e89d4559b8f76" -> "sha256:d2bb55c2b004593e5be3c07a95e9124f12ef89a9cd9352fd4abbde207627969e" [label=""];
}

