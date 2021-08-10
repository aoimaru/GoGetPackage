[app/sources/199830329.Dockerfile]
digraph {
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" [label="local://context" shape="ellipse"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:7ecebd335a1be46acf5e469c9ccc92841c24aa30e33ba902ccab7f30af382b47" [label="copy{src=/wait-for-it.sh, dest=/}" shape="note"];
  "sha256:3431601fb63f4e574b93d332a0d5c14d8e026efd84fd7219ca0aa701ea049b27" [label="/bin/sh -c chmod +x /wait-for-it.sh" shape="box"];
  "sha256:e4457466237e317b6df3e7c36a163efc00032ce903a48436bbf8422e86d27a27" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates && apt-get clean all" shape="box"];
  "sha256:64fba55866cf2b4072da595d239cbb0f1382e1eb8b9f72c19bc18cd121946c37" [label="copy{src=/INFN-CA-2015.pem, dest=/usr/local/share/ca-certificates/INFN-CA-2015.crt}" shape="note"];
  "sha256:5fea5d7354f9612b6e9704f69477fbadc64090671c88558eb078a4681dcb347f" [label="copy{src=/igi-test-ca.pem, dest=/usr/local/share/ca-certificates/igi-test-ca.crt}" shape="note"];
  "sha256:a148d24a451b15eb4cce266203d2cf4a629008e6f0711ea617e112cc0e08f21c" [label="copy{src=/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:83b8536bdfc2a3a3e224e9ebf0ceed27d6a7bc8f42f8af9425c9d8b3920860eb" [label="copy{src=/iam.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:2bb3e71ee8510a9752d99980d7bbb27265eb6b6f74b8bd1f1374035a1a027253" [label="copy{src=/iam.key.pem, dest=/etc/ssl/private/}" shape="note"];
  "sha256:26e3855a83f802067337badf9b73b482f65e10503bae3ee785663c2a7e2ba27e" [label="copy{src=/iam.cert.pem, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:1be8203e4a7ae0734dd0e4f74edb8b8cf6ce0bbf3ae2b16602104a2a884784ed" [label="/bin/sh -c update-ca-certificates" shape="box"];
  "sha256:fce5e87439bc400639de6cc369f03d9777379cc77d26662796f10c8ff4504e8a" [label="sha256:fce5e87439bc400639de6cc369f03d9777379cc77d26662796f10c8ff4504e8a" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:7ecebd335a1be46acf5e469c9ccc92841c24aa30e33ba902ccab7f30af382b47" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:7ecebd335a1be46acf5e469c9ccc92841c24aa30e33ba902ccab7f30af382b47" [label=""];
  "sha256:7ecebd335a1be46acf5e469c9ccc92841c24aa30e33ba902ccab7f30af382b47" -> "sha256:3431601fb63f4e574b93d332a0d5c14d8e026efd84fd7219ca0aa701ea049b27" [label=""];
  "sha256:3431601fb63f4e574b93d332a0d5c14d8e026efd84fd7219ca0aa701ea049b27" -> "sha256:e4457466237e317b6df3e7c36a163efc00032ce903a48436bbf8422e86d27a27" [label=""];
  "sha256:e4457466237e317b6df3e7c36a163efc00032ce903a48436bbf8422e86d27a27" -> "sha256:64fba55866cf2b4072da595d239cbb0f1382e1eb8b9f72c19bc18cd121946c37" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:64fba55866cf2b4072da595d239cbb0f1382e1eb8b9f72c19bc18cd121946c37" [label=""];
  "sha256:64fba55866cf2b4072da595d239cbb0f1382e1eb8b9f72c19bc18cd121946c37" -> "sha256:5fea5d7354f9612b6e9704f69477fbadc64090671c88558eb078a4681dcb347f" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:5fea5d7354f9612b6e9704f69477fbadc64090671c88558eb078a4681dcb347f" [label=""];
  "sha256:5fea5d7354f9612b6e9704f69477fbadc64090671c88558eb078a4681dcb347f" -> "sha256:a148d24a451b15eb4cce266203d2cf4a629008e6f0711ea617e112cc0e08f21c" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:a148d24a451b15eb4cce266203d2cf4a629008e6f0711ea617e112cc0e08f21c" [label=""];
  "sha256:a148d24a451b15eb4cce266203d2cf4a629008e6f0711ea617e112cc0e08f21c" -> "sha256:83b8536bdfc2a3a3e224e9ebf0ceed27d6a7bc8f42f8af9425c9d8b3920860eb" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:83b8536bdfc2a3a3e224e9ebf0ceed27d6a7bc8f42f8af9425c9d8b3920860eb" [label=""];
  "sha256:83b8536bdfc2a3a3e224e9ebf0ceed27d6a7bc8f42f8af9425c9d8b3920860eb" -> "sha256:2bb3e71ee8510a9752d99980d7bbb27265eb6b6f74b8bd1f1374035a1a027253" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:2bb3e71ee8510a9752d99980d7bbb27265eb6b6f74b8bd1f1374035a1a027253" [label=""];
  "sha256:2bb3e71ee8510a9752d99980d7bbb27265eb6b6f74b8bd1f1374035a1a027253" -> "sha256:26e3855a83f802067337badf9b73b482f65e10503bae3ee785663c2a7e2ba27e" [label=""];
  "sha256:0a8633c04558767f20597746c89b4747c8c8527d9f162ed347dd5012f48fe1aa" -> "sha256:26e3855a83f802067337badf9b73b482f65e10503bae3ee785663c2a7e2ba27e" [label=""];
  "sha256:26e3855a83f802067337badf9b73b482f65e10503bae3ee785663c2a7e2ba27e" -> "sha256:1be8203e4a7ae0734dd0e4f74edb8b8cf6ce0bbf3ae2b16602104a2a884784ed" [label=""];
  "sha256:1be8203e4a7ae0734dd0e4f74edb8b8cf6ce0bbf3ae2b16602104a2a884784ed" -> "sha256:fce5e87439bc400639de6cc369f03d9777379cc77d26662796f10c8ff4504e8a" [label=""];
}

