[app/sources/410970850.Dockerfile]
digraph {
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" [label="local://context" shape="ellipse"];
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" [label="docker-image://registry.access.redhat.com/rhel7/rhel:latest" shape="ellipse"];
  "sha256:ef8d2f67129ce5b05ca776955c4e0b859a02a6ffc90622dce70e2baaae6afd19" [label="copy{src=/not_ignored_file, dest=/testdir/},copy{src=/not_ignored_dir, dest=/testdir/}" shape="note"];
  "sha256:dfa7faea461f048027be7bb810d90a70db0ba0a14e82cc14d4450c66966431fe" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:e0c41aeb7084679e173d0b65849f9c923659e839d5947585e0e06c9b70df68f2" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:b90b43edee38844cde3b120a67aa0088cfc7bd0b9a0799b21803127abc88f5ac" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:ad2c30a08c97382e578f5ccaeae12a59a2b18da1e9c542547fe651febb383d6f" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:02c785f25a9ad85e88a064fbf9c6692ff86ee939d27b6e0ed0c3d0c0d1da098e" [label="sha256:02c785f25a9ad85e88a064fbf9c6692ff86ee939d27b6e0ed0c3d0c0d1da098e" shape="plaintext"];
  "sha256:aac4c0ec49f36d80eaad9f333791eca092160d232c3345188e4e0c7f0e4734bb" -> "sha256:ef8d2f67129ce5b05ca776955c4e0b859a02a6ffc90622dce70e2baaae6afd19" [label=""];
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" -> "sha256:ef8d2f67129ce5b05ca776955c4e0b859a02a6ffc90622dce70e2baaae6afd19" [label=""];
  "sha256:ef8d2f67129ce5b05ca776955c4e0b859a02a6ffc90622dce70e2baaae6afd19" -> "sha256:dfa7faea461f048027be7bb810d90a70db0ba0a14e82cc14d4450c66966431fe" [label=""];
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" -> "sha256:dfa7faea461f048027be7bb810d90a70db0ba0a14e82cc14d4450c66966431fe" [label=""];
  "sha256:dfa7faea461f048027be7bb810d90a70db0ba0a14e82cc14d4450c66966431fe" -> "sha256:e0c41aeb7084679e173d0b65849f9c923659e839d5947585e0e06c9b70df68f2" [label=""];
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" -> "sha256:e0c41aeb7084679e173d0b65849f9c923659e839d5947585e0e06c9b70df68f2" [label=""];
  "sha256:e0c41aeb7084679e173d0b65849f9c923659e839d5947585e0e06c9b70df68f2" -> "sha256:b90b43edee38844cde3b120a67aa0088cfc7bd0b9a0799b21803127abc88f5ac" [label=""];
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" -> "sha256:b90b43edee38844cde3b120a67aa0088cfc7bd0b9a0799b21803127abc88f5ac" [label=""];
  "sha256:b90b43edee38844cde3b120a67aa0088cfc7bd0b9a0799b21803127abc88f5ac" -> "sha256:ad2c30a08c97382e578f5ccaeae12a59a2b18da1e9c542547fe651febb383d6f" [label=""];
  "sha256:8c768e64b911bdb2cd09a7ba1158caf258aeb47198b6f0a07de610a7440a775f" -> "sha256:ad2c30a08c97382e578f5ccaeae12a59a2b18da1e9c542547fe651febb383d6f" [label=""];
  "sha256:ad2c30a08c97382e578f5ccaeae12a59a2b18da1e9c542547fe651febb383d6f" -> "sha256:02c785f25a9ad85e88a064fbf9c6692ff86ee939d27b6e0ed0c3d0c0d1da098e" [label=""];
}

