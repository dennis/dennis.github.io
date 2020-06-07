serve:
	docker run --rm --volume="${PWD}:/srv/jekyll" \
		--volume="${PWD}/vendor/bundle:/usr/local/bundle" \
		-p "4000:4000" \
		-it jekyll/jekyll:3.8 \
		jekyll serve --watch

bundle_update:
	docker run --rm --volume="${PWD}:/srv/jekyll" \
		--volume="${PWD}/vendor/bundle:/usr/local/bundle" \
		-p "4000:4000" \
		-it jekyll/jekyll:3.8 \
		bundle update
