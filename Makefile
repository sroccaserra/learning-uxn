TAL_FILES=$(wildcard src/*.tal)

.PHONY: %
.PRECIOUS: bin/%.rom
%: bin/%.rom
	uxnemu -s 2 $<

bin/%.rom: src/%.tal $(TAL_FILES)
	uxnasm $< $@

bin:
	mkdir -p bin

clean:
	rm bin/*.rom
