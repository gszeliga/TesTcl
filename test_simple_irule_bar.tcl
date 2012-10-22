source on.tcl
source assert.tcl
source onirule.tcl
namespace import ::testcl::*

# Comment out to suppress logging
log::lvSuppressLE info 0

event HTTP_REQUEST

on HTTP::uri return "/bar"

endstate pool bar

run simple_irule.tcl simple