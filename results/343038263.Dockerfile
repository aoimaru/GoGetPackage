[app/sources/343038263.Dockerfile]
digraph {
  "sha256:0df63976b562a6f9eb700fe649e22f8c6ba16e933d5a90aaa9a2ec5d2eaceaeb" [label="local://context" shape="ellipse"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:5679fced46956d92834cd0f9bf965ac521803055ba2b8abfdb9f137dedc2d8ce" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:a51e5426f072423fb8730c3e0d1c3d7be2b75a3291f82762eb7b7dc356d340f3" [label="copy{src=/requirements.txt, dest=/opt/imageview/}" shape="note"];
  "sha256:8e03b12d32777ba53a8719196521af3f24eb91fc6ce302992fa2039a15ce193c" [label="/bin/sh -c pip install --no-cache-dir -r $APP_PATH/requirements.txt" shape="box"];
  "sha256:875b95ff3868b7d306ad03eccb06d1cc85fb70fce996bfe6b0fc85909069edd5" [label="copy{src=/app.py, dest=/opt/imageview/}" shape="note"];
  "sha256:4688872fa0cdd5cfaac51646b11a694d8f03bc82b0d97aea893585882499d2eb" [label="copy{src=/templates, dest=/opt/imageview/templates/}" shape="note"];
  "sha256:7ff14f9529a5ad33a332f9221198f6a917866f5227c0465793ebfea761b02ed0" [label="copy{src=/static, dest=/opt/imageview/static/}" shape="note"];
  "sha256:7c8546c56f72b454e8ca57ca7c7a212fccee6ea00a4b17969b571ca81ee20ffd" [label="sha256:7c8546c56f72b454e8ca57ca7c7a212fccee6ea00a4b17969b571ca81ee20ffd" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:5679fced46956d92834cd0f9bf965ac521803055ba2b8abfdb9f137dedc2d8ce" [label=""];
  "sha256:5679fced46956d92834cd0f9bf965ac521803055ba2b8abfdb9f137dedc2d8ce" -> "sha256:a51e5426f072423fb8730c3e0d1c3d7be2b75a3291f82762eb7b7dc356d340f3" [label=""];
  "sha256:0df63976b562a6f9eb700fe649e22f8c6ba16e933d5a90aaa9a2ec5d2eaceaeb" -> "sha256:a51e5426f072423fb8730c3e0d1c3d7be2b75a3291f82762eb7b7dc356d340f3" [label=""];
  "sha256:a51e5426f072423fb8730c3e0d1c3d7be2b75a3291f82762eb7b7dc356d340f3" -> "sha256:8e03b12d32777ba53a8719196521af3f24eb91fc6ce302992fa2039a15ce193c" [label=""];
  "sha256:8e03b12d32777ba53a8719196521af3f24eb91fc6ce302992fa2039a15ce193c" -> "sha256:875b95ff3868b7d306ad03eccb06d1cc85fb70fce996bfe6b0fc85909069edd5" [label=""];
  "sha256:0df63976b562a6f9eb700fe649e22f8c6ba16e933d5a90aaa9a2ec5d2eaceaeb" -> "sha256:875b95ff3868b7d306ad03eccb06d1cc85fb70fce996bfe6b0fc85909069edd5" [label=""];
  "sha256:875b95ff3868b7d306ad03eccb06d1cc85fb70fce996bfe6b0fc85909069edd5" -> "sha256:4688872fa0cdd5cfaac51646b11a694d8f03bc82b0d97aea893585882499d2eb" [label=""];
  "sha256:0df63976b562a6f9eb700fe649e22f8c6ba16e933d5a90aaa9a2ec5d2eaceaeb" -> "sha256:4688872fa0cdd5cfaac51646b11a694d8f03bc82b0d97aea893585882499d2eb" [label=""];
  "sha256:4688872fa0cdd5cfaac51646b11a694d8f03bc82b0d97aea893585882499d2eb" -> "sha256:7ff14f9529a5ad33a332f9221198f6a917866f5227c0465793ebfea761b02ed0" [label=""];
  "sha256:0df63976b562a6f9eb700fe649e22f8c6ba16e933d5a90aaa9a2ec5d2eaceaeb" -> "sha256:7ff14f9529a5ad33a332f9221198f6a917866f5227c0465793ebfea761b02ed0" [label=""];
  "sha256:7ff14f9529a5ad33a332f9221198f6a917866f5227c0465793ebfea761b02ed0" -> "sha256:7c8546c56f72b454e8ca57ca7c7a212fccee6ea00a4b17969b571ca81ee20ffd" [label=""];
}

