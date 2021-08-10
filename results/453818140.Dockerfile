[app/sources/453818140.Dockerfile]
digraph {
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" [label="docker-image://docker.io/library/python:2.7.11" shape="ellipse"];
  "sha256:5df3450930347a844100fd39bbc855419e00560e17db925c0221b49427aa128f" [label="local://context" shape="ellipse"];
  "sha256:a7d594427e4125c906b9532c478c2497773046b4ae57bdeb4d55a43cee0393ab" [label="copy{src=/, dest=/turkish-pos-tagger}" shape="note"];
  "sha256:323fab8a768bc4ad4b66b7ffa638d5beec3545ca9a4fd3366bad703bcc195e32" [label="mkdir{path=/turkish-pos-tagger}" shape="note"];
  "sha256:f65f6a9adb952aa0869a3c84cc20327138863476dfbab6d9dc996a4c47b67a03" [label="/bin/sh -c pip install pyyaml" shape="box"];
  "sha256:a6d7175e12ca2ab441c0f34874ee0d0f6c693d6580249288bc015aac88406d25" [label="/bin/sh -c pip install -U nltk" shape="box"];
  "sha256:fd9310f03eda4baeddc2ed3de30bcf1e5b864f1065b2a62ff40e4db00fb9dd76" [label="/bin/sh -c python training_tagger.py" shape="box"];
  "sha256:35a09a1db0bfaecffc0a7f75e38e87ef2f18eb60d15be77c3e619138280287f6" [label="sha256:35a09a1db0bfaecffc0a7f75e38e87ef2f18eb60d15be77c3e619138280287f6" shape="plaintext"];
  "sha256:84e2858e623128aaca9366b254b7ca9d45684ef57e82098c1bd4a4eac14d3483" -> "sha256:a7d594427e4125c906b9532c478c2497773046b4ae57bdeb4d55a43cee0393ab" [label=""];
  "sha256:5df3450930347a844100fd39bbc855419e00560e17db925c0221b49427aa128f" -> "sha256:a7d594427e4125c906b9532c478c2497773046b4ae57bdeb4d55a43cee0393ab" [label=""];
  "sha256:a7d594427e4125c906b9532c478c2497773046b4ae57bdeb4d55a43cee0393ab" -> "sha256:323fab8a768bc4ad4b66b7ffa638d5beec3545ca9a4fd3366bad703bcc195e32" [label=""];
  "sha256:323fab8a768bc4ad4b66b7ffa638d5beec3545ca9a4fd3366bad703bcc195e32" -> "sha256:f65f6a9adb952aa0869a3c84cc20327138863476dfbab6d9dc996a4c47b67a03" [label=""];
  "sha256:f65f6a9adb952aa0869a3c84cc20327138863476dfbab6d9dc996a4c47b67a03" -> "sha256:a6d7175e12ca2ab441c0f34874ee0d0f6c693d6580249288bc015aac88406d25" [label=""];
  "sha256:a6d7175e12ca2ab441c0f34874ee0d0f6c693d6580249288bc015aac88406d25" -> "sha256:fd9310f03eda4baeddc2ed3de30bcf1e5b864f1065b2a62ff40e4db00fb9dd76" [label=""];
  "sha256:fd9310f03eda4baeddc2ed3de30bcf1e5b864f1065b2a62ff40e4db00fb9dd76" -> "sha256:35a09a1db0bfaecffc0a7f75e38e87ef2f18eb60d15be77c3e619138280287f6" [label=""];
}

