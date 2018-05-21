<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:insight  Version:1.8.0.0 - Mon May 21 11:31:14 PDT 2018 -->
  <!-- Generated from the PDS4 Information Model Version 1.8.0.0 - System Build 7b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/insight/v1" prefix="insight"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information">
      <sch:assert test="if ((insight:spacecraft_clock_count_partition) or (
        (contains(insight:spacecraft_clock_start_count, '/')) and
        (contains(insight:spacecraft_clock_stop_count,'/')) )) then true() else false() ">
        insight:error:sclk_rule_0: The insight:Observation_Information class must either
        include the attribute insight:spacecraft_clock_count_partition, OR the values for
        insight:spacecraft_clock_start_count and insight:spacecraft_clock_stop_count must start with
        the partition number followed by a forward slash.</sch:assert>
      <sch:assert test="if ((insight:local_true_solar_time_sol) or (
        (matches(insight:start_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$')) and
        (matches(insight:stop_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$')) )) then
        true() else false() ">
        insight:error:ltst_rule_0: The insight:Observation_Information class must either
        include the attribute insight:local_true_solar_time_sol, OR the values for
        insight:start_local_true_solar_time and insight:stop_local_true_solar_time must include a
        sol number, as in [[Sol-]nnnnn ]hh:mm:ss[.fffff].</sch:assert>
      <sch:assert test="if ((insight:sol_number and (insight:start_sol_number or insight:stop_sol_number))
        or (not(insight:sol_number) and not(insight:start_sol_number) and
        not(insight:stop_sol_number))) then false() else true() ">
        insight:error:sol_number_0: The insight:Observation_Information class must
        include either the attribute insight:sol_number or the pair of attributes
        insight:start_sol_number and insight:stop_sol_number.</sch:assert>
      <sch:assert test="if ( ((insight:start_sol_number) and (not(insight:stop_sol_number))) or
        ((insight:stop_sol_number) and (not(insight:start_sol_number))) ) then false() else true() ">
        insight:error:sol_number_1: If either of the pair insight:start_sol_number and
        insight:stop_sol_number is present, then both must be present.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
