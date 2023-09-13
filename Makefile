
DESTDIR = dist

all: fetch run

fetch: awesome-veganism/.git/config
	cd awesome-veganism && git pull --rebase

awesome-veganism/.git/config:
	git clone https://github.com/sdassow/awesome-veganism

markdown-webgen/.git/config:
	git clone https://github.com/sdassow/markdown-webgen

awesome-veganism-feed/.git/config:
	git clone https://github.com/sdassow/awesome-veganism-feed

markdown-webgen/markdown-webgen: markdown-webgen/.git/config
	cd markdown-webgen && go build

awesome-veganism-feed/awesome-veganism-feed: awesome-veganism-feed/.git/config
	cd awesome-veganism-feed && go build

run: markdown-webgen/markdown-webgen awesome-veganism-feed/awesome-veganism-feed
	./markdown-webgen/markdown-webgen \
		-destdir ${DESTDIR} \
		-assetdir assets \
		awesome-veganism/README.md
	./awesome-veganism-feed/awesome-veganism-feed \
		-workdir  awesome-veganism \
		-destdir ${DESTDIR}

