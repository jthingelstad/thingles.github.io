#J=bundle exec jekyll
J=jekyll

all: site

site: clean
	$J build #--lsi
	chmod -R a+rx ./_site/

clean:
	rm -rf _site/

local_all:
	$J serve --watch --drafts

local:
	$J serve --watch --drafts --limit_posts 100

new:
	./new_post.sh

