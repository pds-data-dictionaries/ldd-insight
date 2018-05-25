<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:insight  Version:1.8.1.0 - Fri May 25 16:12:46 CDT 2018 -->
  <!-- Generated from the PDS4 Information Model Version 1.10.0.0 - System Build 8b -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/insight/v1" prefix="insight"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:mission_phase_name">
      <sch:assert test=". = ('ATLO', 'CRUISE', 'DEVELOPMENT', 'SURFACE MISSION', 'TEST')">
        The attribute insight:mission_phase_name must be equal to one of the following values 'ATLO', 'CRUISE', 'DEVELOPMENT', 'SURFACE MISSION', 'TEST'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:product_type">
      <sch:assert test=". = ('ARK', 'ARM', 'ARO', 'BAY', 'CLM', 'CLR', 'DDD', 'DDL', 'DDS', 'DEM', 'DFF', 'DFL', 'DFS', 'DSE', 'DSG', 'DSL', 'DSP', 'DSR', 'DSS', 'EDR', 'EJP', 'ERP', 'GUH', 'GUS', 'IEF', 'IEP', 'ILC', 'ILM', 'ILP', 'ILT', 'IOF', 'IOI', 'ION', 'LANDER_COORD', 'LIN', 'MAR', 'MDS', 'MSK', 'MXY', 'RAD', 'RAD-calibrated', 'RAD-derived', 'RAD-raw', 'RAF', 'RAS', 'RDM', 'RDR', 'RIE', 'RIF', 'RNE', 'RNF', 'RNG', 'RNM', 'RNO', 'RNR', 'ROTATION_PARAMETERS', 'RSM', 'RUH', 'RUS', 'SHD', 'SHO', 'SLO', 'SLP', 'SMG', 'SMO', 'SNO', 'SNT', 'STATIL-calibrated', 'STATIL-raw', 'TAU', 'TDS', 'TEM-A-calibrated', 'TEM-P-calibrated', 'TEM-raw', 'TFH', 'TFS', 'TFW', 'TLM-raw', 'TNF', 'TRO', 'UIH', 'UIS', 'UIW', 'UUF', 'UUU', 'UVF', 'UVO', 'UVP', 'UVS', 'UVT', 'UVW', 'VVF', 'VVV', 'WEA', 'WSH', 'WSS', 'WWF', 'WWW', 'XXF', 'XXX', 'XYE', 'XYF', 'XYM', 'XYO', 'XYR', 'XYZ', 'YYF', 'YYY', 'ZIH', 'ZIS', 'ZIW', 'ZZF', 'ZZZ')">
        The attribute insight:product_type must be equal to one of the following values 'ARK', 'ARM', 'ARO', 'BAY', 'CLM', 'CLR', 'DDD', 'DDL', 'DDS', 'DEM', 'DFF', 'DFL', 'DFS', 'DSE', 'DSG', 'DSL', 'DSP', 'DSR', 'DSS', 'EDR', 'EJP', 'ERP', 'GUH', 'GUS', 'IEF', 'IEP', 'ILC', 'ILM', 'ILP', 'ILT', 'IOF', 'IOI', 'ION', 'LANDER_COORD', 'LIN', 'MAR', 'MDS', 'MSK', 'MXY', 'RAD', 'RAD-calibrated', 'RAD-derived', 'RAD-raw', 'RAF', 'RAS', 'RDM', 'RDR', 'RIE', 'RIF', 'RNE', 'RNF', 'RNG', 'RNM', 'RNO', 'RNR', 'ROTATION_PARAMETERS', 'RSM', 'RUH', 'RUS', 'SHD', 'SHO', 'SLO', 'SLP', 'SMG', 'SMO', 'SNO', 'SNT', 'STATIL-calibrated', 'STATIL-raw', 'TAU', 'TDS', 'TEM-A-calibrated', 'TEM-P-calibrated', 'TEM-raw', 'TFH', 'TFS', 'TFW', 'TLM-raw', 'TNF', 'TRO', 'UIH', 'UIS', 'UIW', 'UUF', 'UUU', 'UVF', 'UVO', 'UVP', 'UVS', 'UVT', 'UVW', 'VVF', 'VVV', 'WEA', 'WSH', 'WSS', 'WWF', 'WWW', 'XXF', 'XXX', 'XYE', 'XYF', 'XYM', 'XYO', 'XYR', 'XYZ', 'YYF', 'YYY', 'ZIH', 'ZIS', 'ZIW', 'ZZF', 'ZZZ'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:start_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:stop_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEIS_Instrument_Parameters/insight:channel_name">
      <sch:assert test=". = ('SP_1', 'SP_2', 'SP_3', 'VBB_1_Position', 'VBB_1_Temperature', 'VBB_1_Velocity', 'VBB_2_Position', 'VBB_2_Temperature', 'VBB_2_Velocity', 'VBB_3_Position', 'VBB_3_Temperature', 'VBB_3_Velocity')">
        The attribute insight:channel_name must be equal to one of the following values 'SP_1', 'SP_2', 'SP_3', 'VBB_1_Position', 'VBB_1_Temperature', 'VBB_1_Velocity', 'VBB_2_Position', 'VBB_2_Temperature', 'VBB_2_Velocity', 'VBB_3_Position', 'VBB_3_Temperature', 'VBB_3_Velocity'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEIS_Instrument_Parameters/insight:measurement_type">
      <sch:assert test=". = ('SP_Event', 'VBB_Continuous', 'VBB_Event')">
        The attribute insight:measurement_type must be equal to one of the following values 'SP_Event', 'VBB_Continuous', 'VBB_Event'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information">
      <sch:assert test="if (
        (insight:spacecraft_clock_count_partition) 
        or (
          (contains(insight:spacecraft_clock_start_count, '/')) and
          (contains(insight:spacecraft_clock_stop_count,'/')) 
           )
        or (
           (not (insight:spacecraft_clock_count_partition)) and 
           (not (insight:spacecraft_clock_start_count)) and
           (not (insight:spacecraft_clock_stop_count))
           ) 
        ) then true() else false() ">
        insight:error:sclk_rule_0: If insight:spacecraft_clock_start_count and 
        insight:spacecraft_clock_stop_count are present, they must begin with a partition number 
        followed by a forward slash, OR the partition number must be given by insight:spacecraft_clock_count_partition.
      </sch:assert>
      <sch:assert test="if (
          (insight:local_true_solar_time_sol) 
          or (
            (matches(insight:start_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$')) and
            (matches(insight:stop_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$')) 
              ) 
          or (
            (not (insight:local_true_solar_time_sol)) and 
            (not (insight:start_local_true_solar_time)) and
            (not (insight:stop_local_true_solar_time)) 
             ) 
          ) then true() else false() ">
        insight:error:ltst_rule_0: If insight:start_local_true_solar_time and 
        insight:stop_local_true_solar_time are present, they must include a sol number as in
        'Sol-nnnn hh:mm:ss[.fffff]', OR the sol number must be given by insight:local_true_solar_time_sol. 
      </sch:assert>
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
