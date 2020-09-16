BASE = 8051
ARGS = -V geometry:margin=2.5cm

default: mem io

$(BASE)-exercicios-mem.pdf: 00-exercicios-mem.md
	pandoc $(ARGS) $< -o $@

$(BASE)-exercicios-io.pdf: 01-exercicios-io.md
	pandoc $(ARGS) $< -o $@

mem: $(BASE)-exercicios-mem.pdf
io: $(BASE)-exercicios-io.pdf

clean:
	$(RM) *-exercicios-*.pdf