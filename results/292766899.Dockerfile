[app/sources/292766899.Dockerfile]
digraph {
  "sha256:10da6e2c034c74a81357bc80a428c024fe1db1db79184101e670f2c7cfe85935" [label="docker-image://docker.io/library/ruby:2.5.1-alpine" shape="ellipse"];
  "sha256:55afbda9874fd9e638b1d9f0117e890f2eeafd90c4e27c71513403226f246ed2" [label="/bin/sh -c apk add --no-cache git" shape="box"];
  "sha256:d0dbea59eeecbeaf07b421df1747daa90c05a755066909020b4db54967029a1d" [label="mkdir{path=/app}" shape="note"];
  "sha256:ddd5402168f5d4af3950dfbe6e1cf121c68eb39062114f0c335cd08054557071" [label="local://context" shape="ellipse"];
  "sha256:100ea60427676ef6852ff06269ab10acaa16e706641096df396410994eeeeca4" [label="copy{src=/lib/language_server/version.rb, dest=/app/lib/language_server/}" shape="note"];
  "sha256:30e3376dbfd0825908fd40e3e21dc44ee77d376fc51cb0364a0337022183e209" [label="copy{src=/Gemfile, dest=/app/},copy{src=/language_server.gemspec, dest=/app/}" shape="note"];
  "sha256:500821688d0c6a49e7fda176eebc6bec65ecf8b2129382ca57f5efa04601172f" [label="/bin/sh -c bundle install --without development" shape="box"];
  "sha256:ae2d9cd0f0fa6b2e27d9e94be929517391859c84ff4d67c7be050357b0e54e5c" [label="copy{src=/lib, dest=/app/lib/}" shape="note"];
  "sha256:54d67b647da334e2da2e4534f79044fc6c66790c330ecf3a277fdbf7c68feabf" [label="copy{src=/exe, dest=/app/exe/}" shape="note"];
  "sha256:99ec904b4db5d47ce573e63a93ff1977370c14f64ca8e87e008f21a7b465a5f9" [label="sha256:99ec904b4db5d47ce573e63a93ff1977370c14f64ca8e87e008f21a7b465a5f9" shape="plaintext"];
  "sha256:10da6e2c034c74a81357bc80a428c024fe1db1db79184101e670f2c7cfe85935" -> "sha256:55afbda9874fd9e638b1d9f0117e890f2eeafd90c4e27c71513403226f246ed2" [label=""];
  "sha256:55afbda9874fd9e638b1d9f0117e890f2eeafd90c4e27c71513403226f246ed2" -> "sha256:d0dbea59eeecbeaf07b421df1747daa90c05a755066909020b4db54967029a1d" [label=""];
  "sha256:d0dbea59eeecbeaf07b421df1747daa90c05a755066909020b4db54967029a1d" -> "sha256:100ea60427676ef6852ff06269ab10acaa16e706641096df396410994eeeeca4" [label=""];
  "sha256:ddd5402168f5d4af3950dfbe6e1cf121c68eb39062114f0c335cd08054557071" -> "sha256:100ea60427676ef6852ff06269ab10acaa16e706641096df396410994eeeeca4" [label=""];
  "sha256:100ea60427676ef6852ff06269ab10acaa16e706641096df396410994eeeeca4" -> "sha256:30e3376dbfd0825908fd40e3e21dc44ee77d376fc51cb0364a0337022183e209" [label=""];
  "sha256:ddd5402168f5d4af3950dfbe6e1cf121c68eb39062114f0c335cd08054557071" -> "sha256:30e3376dbfd0825908fd40e3e21dc44ee77d376fc51cb0364a0337022183e209" [label=""];
  "sha256:30e3376dbfd0825908fd40e3e21dc44ee77d376fc51cb0364a0337022183e209" -> "sha256:500821688d0c6a49e7fda176eebc6bec65ecf8b2129382ca57f5efa04601172f" [label=""];
  "sha256:500821688d0c6a49e7fda176eebc6bec65ecf8b2129382ca57f5efa04601172f" -> "sha256:ae2d9cd0f0fa6b2e27d9e94be929517391859c84ff4d67c7be050357b0e54e5c" [label=""];
  "sha256:ddd5402168f5d4af3950dfbe6e1cf121c68eb39062114f0c335cd08054557071" -> "sha256:ae2d9cd0f0fa6b2e27d9e94be929517391859c84ff4d67c7be050357b0e54e5c" [label=""];
  "sha256:ae2d9cd0f0fa6b2e27d9e94be929517391859c84ff4d67c7be050357b0e54e5c" -> "sha256:54d67b647da334e2da2e4534f79044fc6c66790c330ecf3a277fdbf7c68feabf" [label=""];
  "sha256:ddd5402168f5d4af3950dfbe6e1cf121c68eb39062114f0c335cd08054557071" -> "sha256:54d67b647da334e2da2e4534f79044fc6c66790c330ecf3a277fdbf7c68feabf" [label=""];
  "sha256:54d67b647da334e2da2e4534f79044fc6c66790c330ecf3a277fdbf7c68feabf" -> "sha256:99ec904b4db5d47ce573e63a93ff1977370c14f64ca8e87e008f21a7b465a5f9" [label=""];
}

