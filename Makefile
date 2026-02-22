PROJECT_NAME=ascon

all: $(PROJECT_NAME).elf

%.elf: %.sv
	verilator --cc --exe --build --j 6 -Wall --main --timing $^ -o ../$@

.PHONY: clean
clean:
	rm -f $(PROJECT_NAME).elf && rm -rf obj_dir


