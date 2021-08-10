[app/sources/337127886.Dockerfile]
digraph {
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" [label="docker-image://docker.io/openrasp/centos7:latest" shape="ellipse"];
  "sha256:653aee33a8b4022c492b1a4489e1fc1df14edf0039834b8165d6dfc3f7b03f48" [label="/bin/sh -c rpm -e redis \t&& rpm -ivh https://packages.baidu.com/app/redis5-5.0.3-1.ius.centos7.x86_64.rpm" shape="box"];
  "sha256:a7f35153a899b1fd59e52ad0feba6ac666ac224b1f395ca65da51b89edf17b2c" [label="local://context" shape="ellipse"];
  "sha256:52d470a1c74da1135d02ed8f1cf74e78a4608ee6d43d9897a23bf9866473baf0" [label="copy{src=/*.sh, dest=/root/}" shape="note"];
  "sha256:c7819fcaa91ced0fe41befde660f44730a70f5755559c25b48b395a52fb416cc" [label="/bin/sh -c chmod +x /root/*.sh" shape="box"];
  "sha256:beb8f49ce9b1eab985bf05c1ee7f99849ff12b4d8a3e5c46a639f430d048b611" [label="sha256:beb8f49ce9b1eab985bf05c1ee7f99849ff12b4d8a3e5c46a639f430d048b611" shape="plaintext"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" -> "sha256:653aee33a8b4022c492b1a4489e1fc1df14edf0039834b8165d6dfc3f7b03f48" [label=""];
  "sha256:653aee33a8b4022c492b1a4489e1fc1df14edf0039834b8165d6dfc3f7b03f48" -> "sha256:52d470a1c74da1135d02ed8f1cf74e78a4608ee6d43d9897a23bf9866473baf0" [label=""];
  "sha256:a7f35153a899b1fd59e52ad0feba6ac666ac224b1f395ca65da51b89edf17b2c" -> "sha256:52d470a1c74da1135d02ed8f1cf74e78a4608ee6d43d9897a23bf9866473baf0" [label=""];
  "sha256:52d470a1c74da1135d02ed8f1cf74e78a4608ee6d43d9897a23bf9866473baf0" -> "sha256:c7819fcaa91ced0fe41befde660f44730a70f5755559c25b48b395a52fb416cc" [label=""];
  "sha256:c7819fcaa91ced0fe41befde660f44730a70f5755559c25b48b395a52fb416cc" -> "sha256:beb8f49ce9b1eab985bf05c1ee7f99849ff12b4d8a3e5c46a639f430d048b611" [label=""];
}

