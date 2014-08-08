
FC = gfortran
RANLIB ?= ranlib

blend_prb: blend_prb.o libblend.a
	$(FC) $(^) -L./ -lblend -o $(@)

libblend.a: blend.o
	$(AR) ruv $(@) $(^)
	$(RANLIB) $(@)

%.o: %.f90
	$(FC) $(FFLAGS) -o $(@) -c $(<)

test: ./blend_prb blend_prb_output.txt
	./blend_prb > blend_prb_output.txt.1
	diff blend_prb_output.txt blend_prb_output.txt.1

clean:
	rm -f *.o libblend.a blend_prb blend_prb_output.txt.1
