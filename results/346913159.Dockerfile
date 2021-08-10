[app/sources/346913159.Dockerfile]
digraph {
  "sha256:5474e0fac6fc6460322bb3d69a935eff12ed058759381aded961952a200030b1" [label="local://context" shape="ellipse"];
  "sha256:8af7b7ce6a530a6cb62dbaa4bdddc700bba1c8f15b5018032ac591b1ab9c198c" [label="docker-image://docker.io/library/php:7.2-cli" shape="ellipse"];
  "sha256:5a28ce4b1c76323824249c87f62d5d31ee0ca3cd249851fa72feda4a9e056f85" [label="/bin/sh -c apt-get update &&     apt-get -y install             git             zlib1g-dev             libssl-dev             libfreetype6-dev             libjpeg62-turbo-dev             libpng-dev             mysql-client             sudo less             zip unzip         --no-install-recommends &&         apt-get clean &&         rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:6ec2b3a78ecf7eab1c46405a6274ead24d19fbafd793f1d003bd4041dbf22641" [label="/bin/sh -c docker-php-ext-install     bcmath     gd     zip" shape="box"];
  "sha256:3a9cbd895deeaf79962d31931f5719489cb36fddd2926279d0419781b0602737" [label="/bin/sh -c docker-php-ext-install -j$(nproc) iconv         && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/         && docker-php-ext-install -j$(nproc) gd" shape="box"];
  "sha256:70d68f7ac84119c609c23b39593bcfbe252ca35795e0a87057d12b9bfaabe0d4" [label="/bin/sh -c docker-php-ext-install mysqli" shape="box"];
  "sha256:7d9fbea20f0758a2a3c8a0b6aa695baa374cd20dab737cea0427591653fb8c4d" [label="/bin/sh -c echo \"date.timezone = UTC\" >> /usr/local/etc/php/php.ini" shape="box"];
  "sha256:f8667d1682773709a253caef468a4980141ddc1cdb278cfefee9ebe54f1bd660" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php --         --filename=composer         --install-dir=/usr/local/bin" shape="box"];
  "sha256:9105379d23a91bed9ecbdc157f331f9f35feb378a1289ef5fe35872b85a790af" [label="/bin/sh -c composer global require --optimize-autoloader         \"hirak/prestissimo\"" shape="box"];
  "sha256:5dd453fd2a57c0f260e6f1c4b4d9283779dd818176811a5b0b3eb453438482d6" [label="/bin/sh -c curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" shape="box"];
  "sha256:5d137e0b2b02dba880bf8ce9b60f177949dc7f06f3f29370c61386060cd2a15e" [label="/bin/sh -c chmod +x wp-cli.phar" shape="box"];
  "sha256:0bd0889a43c8abb24918939fb24771d4f644742982dfd2f9b3e5f8d96d934fe1" [label="/bin/sh -c mv wp-cli.phar /usr/local/bin/wp" shape="box"];
  "sha256:39ae9242eb20bf0304501786405263c97482b537e44cb21bc13941690f243f5e" [label="mkdir{path=/repo}" shape="note"];
  "sha256:fca09665d97adf6f9a056a6ebfb982656a8f5b56e11f00036f2f939a872e4452" [label="copy{src=/composer.json, dest=/repo/composer.json}" shape="note"];
  "sha256:d5385468d899eca25ba466999116547b06840900d10577552c1381357c25c6ad" [label="/bin/sh -c composer install --prefer-dist --optimize-autoloader" shape="box"];
  "sha256:e0b9c33665b8673d59f83be035648ae5b48c97c597c5dd91734c54d7d63cdb42" [label="copy{src=/, dest=/repo}" shape="note"];
  "sha256:e66a23cc26cace61a4349ead58f0d7f361fe309bc5ea14149f44e620e45b4d34" [label="mkdir{path=/project}" shape="note"];
  "sha256:77c2dd8914cbe7b79d81cc1e6b075f8010e6a73cd319d158ef2689401e288e7a" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:559c7247872cba872b63948dda193010aaa1d126b3fb610dcf637fce13df2a65" [label="chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:d7d38e04b2482efc23304c8c3aae0478cd74aa65f46da55438c53100e86f728f" [label="sha256:d7d38e04b2482efc23304c8c3aae0478cd74aa65f46da55438c53100e86f728f" shape="plaintext"];
  "sha256:8af7b7ce6a530a6cb62dbaa4bdddc700bba1c8f15b5018032ac591b1ab9c198c" -> "sha256:5a28ce4b1c76323824249c87f62d5d31ee0ca3cd249851fa72feda4a9e056f85" [label=""];
  "sha256:5a28ce4b1c76323824249c87f62d5d31ee0ca3cd249851fa72feda4a9e056f85" -> "sha256:6ec2b3a78ecf7eab1c46405a6274ead24d19fbafd793f1d003bd4041dbf22641" [label=""];
  "sha256:6ec2b3a78ecf7eab1c46405a6274ead24d19fbafd793f1d003bd4041dbf22641" -> "sha256:3a9cbd895deeaf79962d31931f5719489cb36fddd2926279d0419781b0602737" [label=""];
  "sha256:3a9cbd895deeaf79962d31931f5719489cb36fddd2926279d0419781b0602737" -> "sha256:70d68f7ac84119c609c23b39593bcfbe252ca35795e0a87057d12b9bfaabe0d4" [label=""];
  "sha256:70d68f7ac84119c609c23b39593bcfbe252ca35795e0a87057d12b9bfaabe0d4" -> "sha256:7d9fbea20f0758a2a3c8a0b6aa695baa374cd20dab737cea0427591653fb8c4d" [label=""];
  "sha256:7d9fbea20f0758a2a3c8a0b6aa695baa374cd20dab737cea0427591653fb8c4d" -> "sha256:f8667d1682773709a253caef468a4980141ddc1cdb278cfefee9ebe54f1bd660" [label=""];
  "sha256:f8667d1682773709a253caef468a4980141ddc1cdb278cfefee9ebe54f1bd660" -> "sha256:9105379d23a91bed9ecbdc157f331f9f35feb378a1289ef5fe35872b85a790af" [label=""];
  "sha256:9105379d23a91bed9ecbdc157f331f9f35feb378a1289ef5fe35872b85a790af" -> "sha256:5dd453fd2a57c0f260e6f1c4b4d9283779dd818176811a5b0b3eb453438482d6" [label=""];
  "sha256:5dd453fd2a57c0f260e6f1c4b4d9283779dd818176811a5b0b3eb453438482d6" -> "sha256:5d137e0b2b02dba880bf8ce9b60f177949dc7f06f3f29370c61386060cd2a15e" [label=""];
  "sha256:5d137e0b2b02dba880bf8ce9b60f177949dc7f06f3f29370c61386060cd2a15e" -> "sha256:0bd0889a43c8abb24918939fb24771d4f644742982dfd2f9b3e5f8d96d934fe1" [label=""];
  "sha256:0bd0889a43c8abb24918939fb24771d4f644742982dfd2f9b3e5f8d96d934fe1" -> "sha256:39ae9242eb20bf0304501786405263c97482b537e44cb21bc13941690f243f5e" [label=""];
  "sha256:39ae9242eb20bf0304501786405263c97482b537e44cb21bc13941690f243f5e" -> "sha256:fca09665d97adf6f9a056a6ebfb982656a8f5b56e11f00036f2f939a872e4452" [label=""];
  "sha256:5474e0fac6fc6460322bb3d69a935eff12ed058759381aded961952a200030b1" -> "sha256:fca09665d97adf6f9a056a6ebfb982656a8f5b56e11f00036f2f939a872e4452" [label=""];
  "sha256:fca09665d97adf6f9a056a6ebfb982656a8f5b56e11f00036f2f939a872e4452" -> "sha256:d5385468d899eca25ba466999116547b06840900d10577552c1381357c25c6ad" [label=""];
  "sha256:d5385468d899eca25ba466999116547b06840900d10577552c1381357c25c6ad" -> "sha256:e0b9c33665b8673d59f83be035648ae5b48c97c597c5dd91734c54d7d63cdb42" [label=""];
  "sha256:5474e0fac6fc6460322bb3d69a935eff12ed058759381aded961952a200030b1" -> "sha256:e0b9c33665b8673d59f83be035648ae5b48c97c597c5dd91734c54d7d63cdb42" [label=""];
  "sha256:e0b9c33665b8673d59f83be035648ae5b48c97c597c5dd91734c54d7d63cdb42" -> "sha256:e66a23cc26cace61a4349ead58f0d7f361fe309bc5ea14149f44e620e45b4d34" [label=""];
  "sha256:e66a23cc26cace61a4349ead58f0d7f361fe309bc5ea14149f44e620e45b4d34" -> "sha256:77c2dd8914cbe7b79d81cc1e6b075f8010e6a73cd319d158ef2689401e288e7a" [label=""];
  "sha256:5474e0fac6fc6460322bb3d69a935eff12ed058759381aded961952a200030b1" -> "sha256:77c2dd8914cbe7b79d81cc1e6b075f8010e6a73cd319d158ef2689401e288e7a" [label=""];
  "sha256:77c2dd8914cbe7b79d81cc1e6b075f8010e6a73cd319d158ef2689401e288e7a" -> "sha256:559c7247872cba872b63948dda193010aaa1d126b3fb610dcf637fce13df2a65" [label=""];
  "sha256:559c7247872cba872b63948dda193010aaa1d126b3fb610dcf637fce13df2a65" -> "sha256:d7d38e04b2482efc23304c8c3aae0478cd74aa65f46da55438c53100e86f728f" [label=""];
}

