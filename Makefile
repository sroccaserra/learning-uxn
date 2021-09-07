prg=sprite
cmd=uxnemu

run:
	uxnasm $(prg).tal $(prg).rom && $(cmd) $(prg).rom

clean:
	rm *.rom
