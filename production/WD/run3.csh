#setenv XSCATCODE ../src/xscat
setenv XSCAT ../..
setenv PFILES "/tmp;../../syspfiles"
#0.750 0.900 0.950 0.990 0.999
foreach x (0.000 0.200 0.500 0.750 0.900 0.950 0.990 0.999 )
      ../../src/xscat mode=hl clobber=no Epsilon=3e-4 Drude=no Interpolate=yes \
	Emin=0.1 deltaE=0.002 NumberOfEnergies=1450 \
	ExtractRadius=120.0  DustPosition=${x} \
	DustModelName=WD3100AGAL DustModel=-1 \
        OutputFileName=xs_WD3100AGAL_${x}_120 >& \
	  log_xs_WD3100AGAL_${x}_120.txt &
end

