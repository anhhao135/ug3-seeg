onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib jtag_axi_test_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {jtag_axi_test.udo}

run 1000ns

quit -force
