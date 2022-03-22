TAL_FILES=$(wildcard src/*.tal)
ASSETS=$(wildcard assets/*.tal)

.PHONY: default
default: pbm

.PHONY: %
.PRECIOUS: bin/%.rom
%: bin/%.rom
	uxnemu -s 2 $< 2>&1 | sed -E -f opcodes.sed

bin/%.rom: src/%.tal $(TAL_FILES) $(ASSETS)
	uxnasm $< $@

bin:
	mkdir -p bin

clean:
	rm bin/*.rom
