HOSTING = kastaneda@rico:/var/www/kastaneda.kiev.ua

build:
	jekyll build

draft:
	jekyll build -D

compress:
	find _site -regex '.*\.\(html\|xml\|ico\)$$' | xargs zopfli --i50
	find _site -regex '.*\.\(html\|xml\|ico\)$$' | xargs brotli -Z

package:
	tar zcf kastaneda.kiev.ua.tar.gz -C _site/ .

upload:
	rsync -av --delete _site/ $(HOSTING)

post_clone:
	git ls-files | xargs  -I '{}' git log -1 --pretty=format:"%cI {} %n" {} | xargs -n2 touch -d

save_mtime:
	for f in `git diff --name-only | grep \.md$$`; do \
	  d=`date "+%F %X %z" -r $$f`; \
	  sed "s/^mtime:.*$$/mtime: $$d/" -i $$f; \
	  touch -d "$$d" $$f; \
	done

.PHONY: build draft compress package post_clone save_mtime
