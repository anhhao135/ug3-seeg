onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib cable_delay_tester_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {cable_delay_tester.udo}

run 1000ns

quit -force
