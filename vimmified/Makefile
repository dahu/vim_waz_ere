INPUT_FILES = 1_editor_fundamentals.txt 2_line_addresses.txt 2_line_addresses_solutions.txt 3_global_command.txt 3_global_command_solutions.txt 4_substitute_command.txt 4_substitute_command_solutions.txt
HTML_DIR = html
HTML_FILES = $(addprefix html/,$(INPUT_FILES:txt=html))
ETC_ASCIIDOC_ICONS = /etc/asciidoc/images/icons/
SHARE_ASCIIDOC_ICONS = /usr/share/asciidoc/images/icons/
ifneq "$(wildcard $(ETC_ASCIIDOC_ICONS) ])" ''
    ICONS_DIR = $(ETC_ASCIIDOC_ICONS)
else
    ifeq "$(wildcard $(SHARE_ASCIIDOC_ICONS) ])" ''
    	$(error Missing $(ETC_ASCIIDOC_ICONS) and $(SHARE_ASCIIDOC_ICONS))
    endif
    ICONS_DIR = $(SHARE_ASCIIDOC_ICONS)
endif

.PHONY: all html5 clean

all: demand_pygments html5

html5: $(HTML_FILES)

$(HTML_DIR):
	mkdir $(HTML_DIR)

html/%.html: %.txt
	asciidoc -v -b html5 \
		-a toc2 \
		-a toclevels=3 \
		-a icons \
		-a iconsdir=$(ICONS_DIR) \
		-a theme=flask \
		-a data-uri \
		-a pygments \
		-o $@ \
		$<

demand_pygments:
	@type pygmentize >/dev/null

clean:
	rm -fr $(HTML_DIR)

# vim: set noet tw=80:
