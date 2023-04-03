# mips64aws

A few tools and programs written in C and C++ using a MIPSel 64bit AWS host,
using compiler flgas to change the mabi and arch (see compile-for-t31.sh).

These were confirmed to work on a T31 and T21 based webcam running Linux, but
required static linking due to out of date libs on the webcam, as such the 
file sizes are bloated beyond normal sizes.

## Notes
Due to the static linking, C++ files are very big, but when normally dynamically
compiled, they use 11kB, while larger than C it should be fine for our auxiliary
programs stored on SD, or a complex core module.

C++ takes around 4x as long to compile using a mips64aws host, this isn't a big
problem for our final toolchain - but is a noteworthy drawback on this tier of 
machine.


These binaries were run on CaptnRons' and Handys' T31 webcam hosts with 100%
success.

----
ADBeta
