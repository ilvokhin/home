.PHONY: deploy

deploy: index.html
	rsync \
        --recursive \
        --compress \
        --links \
        --progress \
        --delete \
        index.html \
        ilvokhin.com:/srv/http/ilvokhin.com
