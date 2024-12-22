<project xmlns="com.autoesl.autopilot.project" name="adaptive_filter" top="nlms_module_3tap">
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../adaptive_filter_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="adaptive_filter.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="fir_filter.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="nlms.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="nlms_3tap" status="active"/>
    </solutions>
</project>

