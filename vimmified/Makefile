INPUT_FILES = 1_editor_fundamentals.txt 2_line_addresses.txt 3_global_command.txt
HTML_DIR = html
HTML_FILES = $(addprefix html/,$(INPUT_FILES:txt=html))
ICONS_DIR = /etc/asciidoc/images/icons/

.PHONY: all html5 clean

all: html5

html5: $(HTML_FILES)

$(HTML_FILES): | $(HTML_DIR)

$(HTML_DIR):
	mkdir $(HTML_DIR)

html/%.html: %.txt
	echo $(ICONS_DIR)
	asciidoc -v -b html5 \
		-a toc2 \
		-a icons \
		-a iconsdir=$(ICONS_DIR) \
		-a theme=flask \
		-a data-uri \
		-o $@ \
		$<

clean:
	rm -fr html

# vim: set noet tw=80:
