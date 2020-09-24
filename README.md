# awesome-veganism-website

Template, styles, and assets for awesome-veganism.com

Uses [markdown-webgen](https://github.com/sdassow/markdown-webgen), [awesome-veganism](https://github.com/sdassow/awesome-veganism) markdown files, template file and assets, and generate the content for [awesome-veganism.com](https://awesome-veganism.com).

## Usage

First create destination directory: `mkdir dist`

Using the default destination directory `dist`:
```
$ make
git clone https://github.com/sdassow/awesome-veganism
Cloning into 'awesome-veganism'...
remote: Enumerating objects: 132, done.
remote: Counting objects: 100% (132/132), done.
remote: Compressing objects: 100% (122/122), done.
remote: Total 132 (delta 76), reused 12 (delta 7), pack-reused 0
Receiving objects: 100% (132/132), 34.49 KiB | 490.00 KiB/s, done.
Resolving deltas: 100% (76/76), done.
cd awesome-veganism && git pull --rebase
Already up-to-date.
Current branch main is up to date.
git clone https://github.com/sdassow/markdown-webgen
Cloning into 'markdown-webgen'...
remote: Enumerating objects: 64, done.
remote: Counting objects: 100% (64/64), done.
remote: Compressing objects: 100% (39/39), done.
remote: Total 64 (delta 35), reused 48 (delta 24), pack-reused 0
Unpacking objects: 100% (64/64), done.
cd markdown-webgen && go build
./markdown-webgen/markdown-webgen \
		-destdir dist \
		-assetdir assets \
		awesome-veganism/README.md
2020/09/25 01:19:45 reading input...
2020/09/25 01:19:45 found markdown: README.md
2020/09/25 01:19:45 found markdown: CONTRIBUTING.md
2020/09/25 01:19:45 found markdown: CODE_OF_CONDUCT.md
2020/09/25 01:19:45 found markdown: LICENSE.md
2020/09/25 01:19:45 generating html...
2020/09/25 01:19:45 updating file: dist/code-of-conduct.html (e5db9ba0bfa7cabebb69b60c17accfeaa8d6e1f8)
2020/09/25 01:19:45 updating file: dist/contributing.html (8add9a538ca43a2d9cedf2d0d5cb7062c9ff1b59)
2020/09/25 01:19:45 updating file: dist/license.html (cb2af096ec0af870f6ea9422c8f0d608fe56f1a5)
2020/09/25 01:19:45 updating file: dist/index.html (f5f5d2c9127ce23ddd4e670800ceab93a72741d1)
2020/09/25 01:19:45 scanning for assets: assets
2020/09/25 01:19:45 updating file: dist/android-chrome-192x192.png (c764df94e339e1cd31934765424978575a349333)
2020/09/25 01:19:45 updating file: dist/android-chrome-512x512.png (5e2d4d7c1718599900b303b0f501d486b4140f17)
2020/09/25 01:19:45 updating file: dist/apple-touch-icon.png (8b99dc570a0cd01348d3422fc9c9d6d04112571e)
2020/09/25 01:19:45 updating file: dist/awesome-vegan-flag.png (5fa0fe14db530b4fda09481f184af45058ee716c)
2020/09/25 01:19:45 updating file: dist/awesome-vegan-flag.svg (8a225c07153d109c6ebebe5b3649ed547a1ecaaa)
2020/09/25 01:19:45 updating file: dist/browserconfig.xml (99abe926a04d43f5373f119b633b269e5a15a901)
2020/09/25 01:19:45 updating file: dist/bundle.css (e962e779a5565ce0fbb92f691675cc6ed1bee0e1)
2020/09/25 01:19:45 updating file: dist/favicon-16x16.png (679d7041c05a26864997dbb2027d4e25a87d5180)
2020/09/25 01:19:45 updating file: dist/favicon-32x32.png (3d33dea4e7a5982154a0d6a99df9bc6108552c2f)
2020/09/25 01:19:45 updating file: dist/favicon.ico (376900d6a29219e1d982a5cca5834b598431b580)
2020/09/25 01:19:45 updating file: dist/forkme_right_darkblue_121621.svg (cd16ebf17053efbc58a0db2ee624641f49dd8640)
2020/09/25 01:19:45 updating file: dist/mstile-150x150.png (1e0b2151a66ad97a8f37653ba9b9786c0c8791b1)
2020/09/25 01:19:45 updating file: dist/robots.txt (311c60be6888b0a9c86b90fe47ca8e15fff8da37)
2020/09/25 01:19:45 updating file: dist/safari-pinned-tab.svg (fad99d62b1205ed6f8fba5d6e0b4c6b8a17c5801)
2020/09/25 01:19:45 updating file: dist/site.webmanifest (51a7108bb48445a2a39af94f03742e4eb17b4d20)
2020/09/25 01:19:45 updating file: dist/sitemap.xml (b6b79c36ab6d4b8ef656d0856f55c3cdda0e81da)
$
```

To use a different destination directory:
```
$ make DESTDIR=.../public
...
```

## License

MIT
