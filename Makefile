


.PHONY: bitfile all clean
all: bitfile


OUTPUT=build/bitfile.bit

bitfile:
	make -C ovp-hdl all
	mkdir -p build
	echo "Now Building" >> ${OUTPUT}
	cp ovp-hdl/gen/example_version.sv >> ${OUTPUT}
	echo "Done" >> ${OUTPUT}
	@echo "Done"

clean:
	make -C ovp-hdl clean
	rm -rf build


include make_include/ovpack.mk
