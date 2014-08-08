
FC = gfortran
RANLIB ?= ranlib

blend_prb: blend_prb.o libblend.a
	$(FC) $(^) -L./ -lblend -o $(@)

libblend.a: blend.o
	$(AR) ruv $(@) $(^)
	$(RANLIB) $(@)

%.o: %.f90
	$(FC) $(FFLAGS) -o $(@) -c $(<)

clean:
	rm *.o libblend.a blend_prb
