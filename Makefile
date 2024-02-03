.PHONY: deploy

deploy: index.html
	rsync -avzP --delete index.html ilvokhin.com:/srv/http/ilvokhin.com
	ssh ilvokhin.com -- sudo chown -R http:http /srv/http/ilvokhin.com
