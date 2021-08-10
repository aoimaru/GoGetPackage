[app/sources/202106268.Dockerfile]
digraph {
  "sha256:85e682c92db31db8ca173d908b3c5c391faedbc58066d7300d60a6ac85171c24" [label="local://context" shape="ellipse"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:2441cd0a7472c0251b3bad3bd1a916edb971b6b6dfbbfa37b610043127b41010" [label="mkdir{path=/app}" shape="note"];
  "sha256:7b087ce27f19113aaba52d4b4c1abf80e26f6fdbe09bb3d9afe678f5f3884ca4" [label="copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:c39949f1f9aa3ec470f41b89b01c14719ac08d07e9ed335ecfb5f2653918f079" [label="/bin/sh -c npm install --production" shape="box"];
  "sha256:578fa43cb5213c5ff6afa5230098bbea71abcf687cc493c88d033822f5e79769" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:8fb0f437dd6b22b191caae130f82b3561ee67056fd4a645d9c2a230d8227e3ac" [label="sha256:8fb0f437dd6b22b191caae130f82b3561ee67056fd4a645d9c2a230d8227e3ac" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:2441cd0a7472c0251b3bad3bd1a916edb971b6b6dfbbfa37b610043127b41010" [label=""];
  "sha256:2441cd0a7472c0251b3bad3bd1a916edb971b6b6dfbbfa37b610043127b41010" -> "sha256:7b087ce27f19113aaba52d4b4c1abf80e26f6fdbe09bb3d9afe678f5f3884ca4" [label=""];
  "sha256:85e682c92db31db8ca173d908b3c5c391faedbc58066d7300d60a6ac85171c24" -> "sha256:7b087ce27f19113aaba52d4b4c1abf80e26f6fdbe09bb3d9afe678f5f3884ca4" [label=""];
  "sha256:7b087ce27f19113aaba52d4b4c1abf80e26f6fdbe09bb3d9afe678f5f3884ca4" -> "sha256:c39949f1f9aa3ec470f41b89b01c14719ac08d07e9ed335ecfb5f2653918f079" [label=""];
  "sha256:c39949f1f9aa3ec470f41b89b01c14719ac08d07e9ed335ecfb5f2653918f079" -> "sha256:578fa43cb5213c5ff6afa5230098bbea71abcf687cc493c88d033822f5e79769" [label=""];
  "sha256:85e682c92db31db8ca173d908b3c5c391faedbc58066d7300d60a6ac85171c24" -> "sha256:578fa43cb5213c5ff6afa5230098bbea71abcf687cc493c88d033822f5e79769" [label=""];
  "sha256:578fa43cb5213c5ff6afa5230098bbea71abcf687cc493c88d033822f5e79769" -> "sha256:8fb0f437dd6b22b191caae130f82b3561ee67056fd4a645d9c2a230d8227e3ac" [label=""];
}

