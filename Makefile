prg=sprite
cmd=uxnemu

run: bin
	uxnasm src/$(prg).tal bin/$(prg).rom && $(cmd) bin/$(prg).rom

bin:
	mkdir -p bin

clean:
	rm *.rom
