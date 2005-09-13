#!/bin/bash

function rb {
    sed -r 's/\t/    /g;s/\s*$//' $1 > $1.temp
    tr -d '\r' < $1.temp > $1
    rm $1.temp
}

rb ../../../boost/circular_buffer.hpp
rb ../../../boost/circular_buffer_fwd.hpp
rb ../../../boost/circular_buffer/base.hpp
rb ../../../boost/circular_buffer/debug.hpp
rb ../../../boost/circular_buffer/details.hpp
rb ../../../boost/circular_buffer/space_optimized.hpp
rb ../index.html
rb Doxyfile
rb circular_buffer.html
rb circular_buffer.xslt
rb circular_buffer_space_optimized.html
rb circular_buffer_space_optimized.xslt
rb copy.xslt
rb doxygen2html.xslt
rb html2xhtml.xslt
rb update_srcdoc.bat
rb update_srcdoc.sh
rb update_srcdoc.xslt
rb ../test/Jamfile
rb ../test/base_test.cpp
rb ../test/common.cpp
rb ../test/space_optimized_test.cpp
rb ../test/test.hpp
