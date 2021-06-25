<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:insight  Version:1.9.0.0 - Fri Jun 25 16:09:04 UTC 2021 -->
  <!-- Generated from the PDS4 Information Model Version 1.15.0.0 - System Build 11a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
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
    <sch:rule context="insight:ASCII_Equivalent_Internal_Reference/insight:ASCII_Equivalent_reference_type">
      <sch:assert test=". = ('seed_to_ascii')">
        <title>insight:ASCII_Equivalent_Internal_Reference/insight:ASCII_Equivalent_reference_type/insight:ASCII_Equivalent_reference_type</title>
        The attribute insight:ASCII_Equivalent_reference_type must be equal to the value 'seed_to_ascii'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Metadata_Location_Internal_Reference/insight:Metadata_Location_reference_type">
      <sch:assert test=". = ('data_to_metadata')">
        <title>insight:Metadata_Location_Internal_Reference/insight:Metadata_Location_reference_type/insight:Metadata_Location_reference_type</title>
        The attribute insight:Metadata_Location_reference_type must be equal to the value 'data_to_metadata'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:mission_phase_name">
      <sch:assert test=". = ('ATLO', 'CRUISE', 'DEVELOPMENT', 'SURFACE MISSION', 'TEST')">
        <title>insight:Observation_Information/insight:mission_phase_name/insight:mission_phase_name</title>
        The attribute insight:mission_phase_name must be equal to one of the following values 'ATLO', 'CRUISE', 'DEVELOPMENT', 'SURFACE MISSION', 'TEST'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:product_type">
      <sch:assert test=". = ('ARK', 'ARM', 'ARO', 'BAY', 'CLM', 'CLR', 'DDD', 'DDL', 'DDS', 'DEM', 'DFF', 'DFL', 'DFS', 'DSE', 'DSG', 'DSL', 'DSP', 'DSR', 'DSS', 'Dataless-SEED', 'EDR', 'EJP', 'ERP', 'GUH', 'GUS', 'GeoCSV', 'IDA_History', 'IDA_Parameters', 'IDA_SciHi', 'IDA_SciLo', 'IDA_Status', 'IDA_Video', 'IEF', 'IEP', 'ILC', 'ILM', 'ILP', 'ILT', 'IOF', 'IOI', 'ION', 'LANDER_COORD', 'LIN', 'MAR', 'MDS', 'MSK', 'MXY', 'Mini-SEED', 'RAD', 'RAD-calibrated', 'RAD-derived', 'RAD-raw', 'RAF', 'RAS', 'RDM', 'RDR', 'RIE', 'RIF', 'RNE', 'RNF', 'RNG', 'RNM', 'RNO', 'RNR', 'ROTATION_PARAMETERS', 'RSM', 'RUH', 'RUS', 'SHD', 'SHO', 'SLO', 'SLP', 'SMG', 'SMO', 'SNO', 'SNT', 'STATIL-calibrated', 'STATIL-raw', 'StationXML', 'TAU', 'TDM', 'TDS', 'TEM-A-calibrated', 'TEM-P-calibrated', 'TEM-calibrated', 'TEM-raw', 'TFH', 'TFS', 'TFW', 'TLM-raw', 'TNF', 'TRO', 'UIH', 'UIS', 'UIW', 'UUF', 'UUU', 'UVF', 'UVO', 'UVP', 'UVS', 'UVT', 'UVW', 'VVF', 'VVV', 'WEA', 'WSH', 'WSS', 'WWF', 'WWW', 'XXF', 'XXX', 'XYE', 'XYF', 'XYM', 'XYO', 'XYR', 'XYZ', 'YYF', 'YYY', 'ZIH', 'ZIS', 'ZIW', 'ZZF', 'ZZZ')">
        <title>insight:Observation_Information/insight:product_type/insight:product_type</title>
        The attribute insight:product_type must be equal to one of the following values 'ARK', 'ARM', 'ARO', 'BAY', 'CLM', 'CLR', 'DDD', 'DDL', 'DDS', 'DEM', 'DFF', 'DFL', 'DFS', 'DSE', 'DSG', 'DSL', 'DSP', 'DSR', 'DSS', 'Dataless-SEED', 'EDR', 'EJP', 'ERP', 'GUH', 'GUS', 'GeoCSV', 'IDA_History', 'IDA_Parameters', 'IDA_SciHi', 'IDA_SciLo', 'IDA_Status', 'IDA_Video', 'IEF', 'IEP', 'ILC', 'ILM', 'ILP', 'ILT', 'IOF', 'IOI', 'ION', 'LANDER_COORD', 'LIN', 'MAR', 'MDS', 'MSK', 'MXY', 'Mini-SEED', 'RAD', 'RAD-calibrated', 'RAD-derived', 'RAD-raw', 'RAF', 'RAS', 'RDM', 'RDR', 'RIE', 'RIF', 'RNE', 'RNF', 'RNG', 'RNM', 'RNO', 'RNR', 'ROTATION_PARAMETERS', 'RSM', 'RUH', 'RUS', 'SHD', 'SHO', 'SLO', 'SLP', 'SMG', 'SMO', 'SNO', 'SNT', 'STATIL-calibrated', 'STATIL-raw', 'StationXML', 'TAU', 'TDM', 'TDS', 'TEM-A-calibrated', 'TEM-P-calibrated', 'TEM-calibrated', 'TEM-raw', 'TFH', 'TFS', 'TFW', 'TLM-raw', 'TNF', 'TRO', 'UIH', 'UIS', 'UIW', 'UUF', 'UUU', 'UVF', 'UVO', 'UVP', 'UVS', 'UVT', 'UVW', 'VVF', 'VVV', 'WEA', 'WSH', 'WSS', 'WWF', 'WWW', 'XXF', 'XXX', 'XYE', 'XYF', 'XYM', 'XYO', 'XYR', 'XYZ', 'YYF', 'YYY', 'ZIH', 'ZIS', 'ZIW', 'ZZF', 'ZZZ'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:start_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>insight:Observation_Information/insight:start_solar_longitude/insight:start_solar_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:Observation_Information/insight:stop_solar_longitude">
      <sch:assert test="@unit = ('arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad')">
        <title>insight:Observation_Information/insight:stop_solar_longitude/insight:stop_solar_longitude</title>
        The attribute @unit must be equal to one of the following values 'arcmin', 'arcsec', 'deg', 'hr', 'mrad', 'rad'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEED_Equivalent_Internal_Reference/insight:SEED_Equivalent_reference_type">
      <sch:assert test=". = ('ascii_to_seed')">
        <title>insight:SEED_Equivalent_Internal_Reference/insight:SEED_Equivalent_reference_type/insight:SEED_Equivalent_reference_type</title>
        The attribute insight:SEED_Equivalent_reference_type must be equal to the value 'ascii_to_seed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEIS_Instrument_Parameters/insight:sampling_rate">
      <sch:assert test="@unit = ('GHz', 'Hz', 'MHz', 'THz', 'kHz', 'mHz')">
        <title>insight:SEIS_Instrument_Parameters/insight:sampling_rate/insight:sampling_rate</title>
        The attribute @unit must be equal to one of the following values 'GHz', 'Hz', 'MHz', 'THz', 'kHz', 'mHz'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEIS_Instrument_Parameters/insight:seis_data_type">
      <sch:assert test=". = ('metadata', 'waveform')">
        <title>insight:SEIS_Instrument_Parameters/insight:seis_data_type/insight:seis_data_type</title>
        The attribute insight:seis_data_type must be equal to one of the following values 'metadata', 'waveform'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="insight:SEIS_Instrument_Parameters/insight:seis_waveform_type">
      <sch:assert test=". = ('continuous', 'event')">
        <title>insight:SEIS_Instrument_Parameters/insight:seis_waveform_type/insight:seis_waveform_type</title>
        The attribute insight:seis_waveform_type must be equal to one of the following values 'continuous', 'event'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information">
      <sch:assert test="if ( 
                      (insight:spacecraft_clock_count_partition) 
                      or 
                      ( (contains(insight:spacecraft_clock_start_count, '/') ) 
                         and
                        (contains(insight:spacecraft_clock_stop_count,'/') ) 
                      ) 
                      or 
                      ( (not (insight:spacecraft_clock_count_partition)) 
                         and (not (insight:spacecraft_clock_start_count)) 
                         and (not (insight:spacecraft_clock_stop_count)) 
                       ) 
                    ) then true() else false() 
      ">
        <title>insight_time_rules/Rule</title>
        insight:error:sclk_rule_0: If insight:spacecraft_clock_start_count and insight:spacecraft_clock_stop_count are
        present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
        insight:spacecraft_clock_count_partition. </sch:assert>
      <sch:assert test="if (
                      (insight:local_true_solar_time_sol) 
                      or 
                      ( (matches(insight:start_local_true_solar_time, '^(Sol\-)?[0-9]{1,5}[0-2][0-9]:.*$')) 
                         and 
                        (matches(insight:stop_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$')) 
                      ) 
                      or 
                      ( (not(insight:local_true_solar_time_sol)) 
                         and (not (insight:start_local_true_solar_time)) 
                         and (not (insight:stop_local_true_solar_time)) 
                       )
                    ) then true() else false() 
      ">
        <title>insight_time_rules/Rule</title>
        insight:error:ltst_rule_0: If insight:start_local_true_solar_time and insight:stop_local_true_solar_time are
        present, they must include a sol number as in 'Sol-nnnn hh:mm:ss[.fffff]', OR the sol number must be given by
        insight:local_true_solar_time_sol. </sch:assert>
      <sch:assert test="if (
                      (insight:sol_number and (insight:start_sol_number or insight:stop_sol_number)) 
                      or 
                      (not(insight:sol_number)
                       and not(insight:start_sol_number) 
                       and not(insight:stop_sol_number)
                       )
                     ) then false() else true() 
      ">
        <title>insight_time_rules/Rule</title>
        insight:error:solnumberrule_0: The insight:Observation_Information class must include either the attribute
        insight:sol_number or the pair of attributes insight:start_sol_number and insight:stop_sol_number.</sch:assert>
      <sch:assert test="if ( 
                      ( (insight:start_sol_number) and (not(insight:stop_sol_number)) ) 
                      or 
                      ( (insight:stop_sol_number) and (not(insight:start_sol_number)) ) 
                     ) then false() else true() 
      ">
        <title>insight_time_rules/Rule</title>
        insight:error:solnumberrule_1: If either of the pair insight:start_sol_number and insight:stop_sol_number is
        present, then both must be present.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:SEIS_Instrument_Parameters">
      <sch:assert test="( 
                   ( 
                     (matches(insight:seis_waveform_type,'continuous')) 
                      and
                     (matches(/pds:Product_Observational/pds:File_Area_Observational/pds:File/pds:file_name,
                        '^[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[0-9]{2}\.[a-z|A-Z|0-9]{3}\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.[0-9]{1,2}\.[A|a]\.csv$'))
                    )
                    or 
                     (not(matches(insight:seis_waveform_type,'continuous'))) 
                  ) 
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_0: SEIS GeoCSV continuous data file names must conform to the specification
        [network].[station].[location].[channel].[year].[doy].[rev].a.csv </sch:assert>
      <sch:assert test="( 
                   (
                     (matches(insight:seis_waveform_type,'event')) 
                      and
                     (matches(/pds:Product_Observational/pds:File_Area_Observational/pds:File/pds:file_name,
                     '^[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[0-9]{2}\.[a-z|A-Z|0-9]{3}\.[a-z|A-Z|0-9]+\.[0-9]{1,2}\.[A|a]\.csv$'))
                    )
                    or 
                     (not(matches(insight:seis_waveform_type,'event'))) 
                  ) 
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_1: SEIS GeoCSV event data file names must conform to the specification
        [network].[station].[location].[channel].[request-event-id].[rev].a.csv </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') 
                      and 
                     (insight:seis_data_type = 'waveform') 
                    )
                    or
                    (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV'))
                  )
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_2: If the product_type is 'GeoCSV', then seis_data_type must be 'waveform'.
      </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') 
                      and 
                     (insight:seis_waveform_type) 
                    )
                    or
                    (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') )
                  )
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_3: If the product type is 'GeoCSV', then seis_waveform_type must be present.
      </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') 
                      and
                     (matches(insight:Metadata_Location/insight:metadata_file_name,
                        '^(s|S)tation(xml|XML)\.[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.sxml$'))
                    )
                    or
                    (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') )
                  )
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_4: If the product_type is 'GeoCSV', then the class Metadata_Location must be
        present, and the value for metadata_file_name must conform to the specification
        stationxml.[network].[station].[year].[doy].sxml. </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')
                      and
                     (matches(insight:SEED_Equivalent/insight:seed_file_name,
                        concat('^',replace(/pds:Product_Observational/pds:File_Area_Observational/pds:File/pds:file_name,'[a|A]\.csv$', 'mseed\$')))) 
                    )
                    or
                     (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')) 
                  ) 
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_5: If the product_type is 'GeoCSV', then the class SEED_Equivalent must be
        present, and the value for seed_file_name must be the same as the GeoCSV file name, except that it must end in '.mseed'
        instead of 'a.csv'. </sch:assert>
      <sch:assert test=" insight:Metadata_Location/pds:Internal_Reference/pds:reference_type = 'data_to_metadata' ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_6: For a SEIS GeoCSV Product_Observational product, the Metadata_Location class
        must be present, and the reference_type must be 'data_to_metadata'. </sch:assert>
      <sch:assert test=" insight:SEED_Equivalent/pds:Internal_Reference/pds:reference_type = 'ascii_to_seed' ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_7: For a SEIS GeoCSV Product_Observational product, the SEED_Equivalent class
        must be present, and the reference_type must be 'ascii_to_seed'. </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')
                      and
                     (matches(/pds:Product_Observational/pds:Identification_Area/pds:logical_identifier,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_table:',replace(/pds:Product_Observational/pds:File_Area_Observational/pds:File/pds:file_name,'\.csv$', '\$'))))) 
                    )
                    or 
                     (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV'))
                 )
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_8: If the product_type is 'GeoCSV', then the logical_identifier must be
        'urn:nasa:pds:insight_seis:data_table:' followed by the file name in lowercase without the .csv extension. </sch:assert>
      <sch:assert test="( 
                   (
                      (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')
                         and
                      (matches(insight:Metadata_Location/pds:Internal_Reference/pds:lid_reference,
                          lower-case(concat('urn:nasa:pds:insight_seis:data_table:',replace(insight:Metadata_Location/insight:metadata_file_name,'\.sxml$', '\$'))))) 
                    )
                      or 
                      (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV') ) 
                 ) 
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_9: For a SEIS GeoCSV Product_Observational product, the Metadata_Location class
        must be present, and its lid_reference must be 'urn:nasa:pds:insight_seis:data_table:' followed by the metadata_file_name
        in lowercase without the '.sxml' extension. </sch:assert>
      <sch:assert test="( 
                   (
                     (/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')
                      and 
                     (matches(insight:SEED_Equivalent/pds:Internal_Reference/pds:lidvid_reference,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_seed:',replace(insight:SEED_Equivalent/insight:seed_file_name,'\.mseed$', '::[0-9]{1,2}\\.[0-9]{1,2}\$')))))
                    ) 
                    or 
                     (not(/pds:Product_Observational/pds:Observation_Area/pds:Mission_Area/insight:Observation_Information/insight:product_type = 'GeoCSV')) 
                  )  
      ">
        <title>seis_geocsv_product_observational_rules/Rule</title>
         insight:error:seisgeocsv_rule_10: For a SEIS GeoCSV Product_Observational product, the SEED_Equivalent class
        must be present, and its lidvid_reference must be 'urn:nasa:pds:insight_seis:data_seed:' followed by the seed_file_name in lowercase
        without the '.mseed' extension, followed by '::' and a version identifier. </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/pds:Product_Ancillary/pds:Context_Area/pds:Mission_Area">
      <sch:assert test="if ( (insight:Observation_Information/insight:spacecraft_clock_count_partition) 
                       or 
                       ( (contains(insight:Observation_Information/insight:spacecraft_clock_start_count,'/')) 
                             and
                         (contains(insight:Observation_Information/insight:spacecraft_clock_stop_count,'/'))
                       )
                       or
                       ( (not(insight:Observation_Information/insight:spacecraft_clock_count_partition)) 
                          and (not(insight:Observation_Information/insight:spacecraft_clock_start_count)) 
                          and (not(insight:Observation_Information/insight:spacecraft_clock_stop_count))
                       )
                     ) then true() else false() 
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:sclk_rule_2: If insight:spacecraft_clock_start_count and insight:spacecraft_clock_stop_count
        are present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
        insight:spacecraft_clock_count_partition. </sch:assert>
      <sch:assert test="if (
                      (insight:Observation_Information/insight:local_true_solar_time_sol)
                      or 
                      ( (matches(insight:Observation_Information/insight:start_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$'))
                         and
                        (matches(insight:Observation_Information/insight:stop_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$'))
                      )
                      or
                      ( (not(insight:Observation_Information/insight:local_true_solar_time_sol))
                         and (not(insight:Observation_Information/insight:start_local_true_solar_time))
                         and (not(insight:Observation_Information/insight:stop_local_true_solar_time))
                       )
                     ) then true() else false() 
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:ltst_rule_2: If insight:start_local_true_solar_time and insight:stop_local_true_solar_time are
        present, they must include a sol number as in 'Sol-nnnn hh:mm:ss[.fffff]', OR the sol number must be given by
        insight:local_true_solar_time_sol. </sch:assert>
      <sch:assert test="if (
                      ( insight:Observation_Information/insight:sol_number 
                        and 
                        (insight:Observation_Information/insight:start_sol_number or insight:Observation_Information/insight:stop_sol_number)
                       )
                       or
                      ( not(insight:Observation_Information/insight:sol_number) 
                        and not(insight:Observation_Information/insight:start_sol_number)
                        and not(insight:Observation_Information/insight:stop_sol_number)
                       )
                     ) then false() else true() 
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:solnumberrule_4: The insight:Observation_Information class must include either the attribute
        insight:sol_number or the pair of attributes insight:start_sol_number and insight:stop_sol_number. </sch:assert>
      <sch:assert test="if ( 
                      ( (insight:Observation_Information/insight:start_sol_number) 
                         and
                        (not(insight:Observation_Information/insight:stop_sol_number))
                       )
                       or
                       ( (insight:Observation_Information/insight:stop_sol_number) 
                          and
                         (not(insight:Observation_Information/insight:start_sol_number)))
                       ) then false() else true() 
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:solnumberrule_5: If either of the pair insight:start_sol_number and insight:stop_sol_number is
        present, then both must be present. </sch:assert>
      <sch:assert test="( 
                   (
                     (matches(insight:Observation_Information/insight:product_type,'StationXML'))
                      and
                     (matches(/pds:Product_Ancillary/pds:File_Area_Ancillary/pds:File/pds:file_name,
                           '^(S|s)tation(XML|xml)\.[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.sxml$'))
                    )
                    or 
                    ( not(matches(insight:Observation_Information/insight:product_type,'StationXML'))
                    )
                  )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_0: SEIS StationXML file names must conform to the specification
        stationxml.[network].[station].[year].[doy].sxml </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'StationXML')
                      and
                     (matches(/pds:Product_Ancillary/pds:Identification_Area/pds:logical_identifier,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_table:',replace(/pds:Product_Ancillary/pds:File_Area_Ancillary/pds:File/pds:file_name,'\.sxml$', '\$')))))
                    ) 
                    or
                     (not(insight:Observation_Information/insight:product_type = 'StationXML'))
                  )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_1: If the product_type is 'StationXML', then the logical_identifier must be
        'urn:nasa:pds:insight_seis:data_table:' followed by the file name in lowercase without the .sxml extension. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'StationXML') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:seis_data_type = 'metadata')
                   )
                   or
                   ( not(insight:Observation_Information/insight:product_type = 'StationXML') 
                   )
                 )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_1: If the product type is 'StationXML', then seis_data_type must be 'metadata'.
      </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'StationXML')
                      and 
                     (not (insight:SEIS_Instrument_Parameters/insight:Metadata_Location))
                    )
                    or
                    ( not(insight:Observation_Information/insight:product_type = 'StationXML') 
                    )
                  )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_2: If the product type is 'StationXML', then the class Metadata_Location must not
        be present. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'StationXML') 
                      and
                     ( (matches(lower-case(insight:SEIS_Instrument_Parameters/insight:SEED_Equivalent/insight:seed_file_name),
                                lower-case(replace (replace(/pds:Product_Ancillary/pds:File_Area_Ancillary/pds:File/pds:file_name, '(S|s)tation(XML|xml)', 'dataless'), 'sxml', 'seed'))))
                     )
                    )
                     or
                    ( not(insight:Observation_Information/insight:product_type = 'StationXML')
                    )
                 )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_3: If the product type is 'StationXML', then the class SEED_Equivalent must be
        present, and the value for seed_file_name must be the same as the StationXML file name, except that it must start with
        'dataless' instead of 'stationxml', and end in '.seed' instead of '.sxml'. </sch:assert>
      <sch:assert test="(
                   (
                      (insight:Observation_Information/insight:product_type = 'StationXML') 
                       and
                      (insight:SEIS_Instrument_Parameters/insight:SEED_Equivalent/pds:Internal_Reference/pds:reference_type = 'ascii_to_seed')
                    )
                 or 
                    (not(insight:Observation_Information/insight:product_type = 'StationXML'))
                 )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_4: For a SEIS StationXML Product_Ancillary product, the SEED_Equivalent class
        must be present, and the reference_type must be 'ascii_to_seed'. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'StationXML') 
                      and
                     (matches(insight:SEIS_Instrument_Parameters/insight:SEED_Equivalent/pds:Internal_Reference/pds:lidvid_reference,
                         lower-case(concat('urn:nasa:pds:insight_seis:data_seed:',replace(insight:SEIS_Instrument_Parameters/insight:SEED_Equivalent/insight:seed_file_name, '\.seed', '::[0-9]{1,2}\\.[0-9]{1,2}\$')))))
                    ) 
                    or
                    (not(insight:Observation_Information/insight:product_type = 'StationXML'))
                  )
      ">
        <title>seis_seed_product_ancillary_rules/Rule</title>
         insight:error:seissxml_rule_5: For a SEIS StationXML Product_Ancillary product, the SEED_Equivalent class
        must be present, and its lidvid_reference must be 'urn:nasa:pds:insight_seis:data_seed:' followed by the seed_file_name
        in lowercase without the '.seed' extension, followed by "::" and a version identifier. </sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="/pds:Product_Native/pds:Context_Area/pds:Mission_Area">
      <sch:assert test="if ( 
                      (insight:Observation_Information/insight:spacecraft_clock_count_partition) 
                      or 
                      ( (contains(insight:Observation_Information/insight:spacecraft_clock_start_count, '/')) 
                           and
                        (contains(insight:Observation_Information/insight:spacecraft_clock_stop_count,'/'))
                      )
                      or 
                      ( (not(insight:Observation_Information/insight:spacecraft_clock_count_partition)) 
                         and (not(insight:Observation_Information/insight:spacecraft_clock_start_count)) 
                         and (not(insight:Observation_Information/insight:spacecraft_clock_stop_count)) 
                       )
                     ) then true() else false() 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:sclk_rule_1: If insight:spacecraft_clock_start_count and insight:spacecraft_clock_stop_count
        are present, they must begin with a partition number followed by a forward slash, OR the partition number must be given by
        insight:spacecraft_clock_count_partition. </sch:assert>
      <sch:assert test="if (
                      (insight:Observation_Information/insight:local_true_solar_time_sol) 
                      or
                      ( (matches(insight:Observation_Information/insight:start_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$'))
                         and
                        (matches(insight:Observation_Information/insight:stop_local_true_solar_time, '^(Sol\-)?[0-9]{1,5} [0-2][0-9]:.*$'))
                       )
                      or 
                      ( (not(insight:Observation_Information/insight:local_true_solar_time_sol)) 
                         and (not(insight:Observation_Information/insight:start_local_true_solar_time)) 
                         and (not(insight:Observation_Information/insight:stop_local_true_solar_time)) 
                       )
                     ) then true() else false() 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:ltst_rule_1: If insight:start_local_true_solar_time and insight:stop_local_true_solar_time are
        present, they must include a sol number as in 'Sol-nnnn hh:mm:ss[.fffff]', OR the sol number must be given by
        insight:local_true_solar_time_sol. </sch:assert>
      <sch:assert test="if (
                      ( insight:Observation_Information/insight:sol_number 
                        and
                        (insight:Observation_Information/insight:start_sol_number or insight:Observation_Information/insight:stop_sol_number)
                       )
                       or
                       ( (not(insight:Observation_Information/insight:sol_number)) 
                          and (not(insight:Observation_Information/insight:start_sol_number))
                          and (not(insight:Observation_Information/insight:stop_sol_number)) 
                       )
                     ) then false() else true() 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:solnumberrule_2: The insight:Observation_Information class must include either the attribute
        insight:sol_number or the pair of attributes insight:start_sol_number and insight:stop_sol_number. </sch:assert>
      <sch:assert test="if ( 
                      ( (insight:Observation_Information/insight:start_sol_number) 
                         and
                        (not(insight:Observation_Information/insight:stop_sol_number))
                      )
                      or
                      ( (insight:Observation_Information/insight:stop_sol_number) 
                         and
                        (not(insight:Observation_Information/insight:start_sol_number))
                      ) 
                    ) then false() else true() 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:solnumberrule_3: If either of the pair insight:start_sol_number and insight:stop_sol_number is
        present, then both must be present. </sch:assert>
      <sch:assert test="( 
                   (
                     (matches(insight:Observation_Information/insight:product_type,'Dataless-SEED'))
                      and
                     (matches(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,
                        '^dataless\.[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.seed$'))
                    )
                    or 
                    ( not(matches(insight:Observation_Information/insight:product_type,'Dataless-SEED'))
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
        insight:error:seisseed_rule_0: SEIS dataless SEED file names must conform to the specification
        dataless.[network].[station].[year].[doy].seed</sch:assert>
      <sch:assert test="( 
                   (
                     (matches(insight:SEIS_Instrument_Parameters/insight:seis_waveform_type,'continuous')) 
                      and
                     (matches(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,
                         '^[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[0-9]{2}\.[a-z|A-Z|0-9]{3}\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.[0-9]{1,2}\.mseed$'))
                    )
                    or 
                    ( not(matches(insight:SEIS_Instrument_Parameters/insight:seis_waveform_type,'continuous'))
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
        insight:error:seisseed_rule_1: SEIS Mini-SEED continuous data file names must conform to the specification
        [network].[station].[location].[channel].[year].[doy].[rev].mseed </sch:assert>
      <sch:assert test="( 
                   (
                     (matches(insight:SEIS_Instrument_Parameters/insight:seis_waveform_type,'event')) 
                      and
                     (matches(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,
                          '^[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[0-9]{2}\.[a-z|A-Z|0-9]{3}\.[a-z|A-Z|0-9]+\.[0-9]{1,2}\.mseed$'))
                   )
                    or 
                    ( not(matches(insight:SEIS_Instrument_Parameters/insight:seis_waveform_type,'event'))
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
        insight:error:seisseed_rule_2: SEIS Mini-SEED event data file names must conform to the specification
        [network].[station].[location].[channel].[request-event-id].[rev].mseed </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:seis_data_type = 'waveform') 
                    )
                    or
                    ( not(insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                    ) 
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
        insight:error:seisseed_rule_3: If the product_type is 'Mini-SEED', then seis_data_type must be 'waveform'.
      </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:SEIS_Instrument_Parameters/insight:seis_data_type = 'waveform') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:seis_waveform_type) 
                    )
                    or 
                    ( not(insight:SEIS_Instrument_Parameters/insight:seis_data_type = 'waveform') 
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_4: If seis_data_type is 'waveform', then seis_waveform_type must be present.
      </sch:assert>
      <sch:assert test="( ( (insight:Observation_Information/insight:product_type = 'Mini-SEED') and
        (matches(insight:SEIS_Instrument_Parameters/insight:Metadata_Location/insight:metadata_file_name,'^dataless\.[a-z|A-Z|0-9]+\.[a-z|A-Z|0-9]+\.[2-9][0-9][1-9][0-9]\.[0-3]?[0-9]?[0-9]\.seed$'))
        ) or ( not(insight:Observation_Information/insight:product_type = 'Mini-SEED') ) ) ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_5: If the product_type is 'Mini-SEED', then the class Metadata_Location must be
        present, and the value for metadata_file_name must conform to the specification
        dataless.[network].[station].[year].[doy].seed. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                     and
                     (matches(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/insight:ascii_equivalent_file_name,
                         concat('^',replace(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,'mseed$', '[a|A]\\.csv\$')))) 
                   ) 
                     or
                     (not(insight:Observation_Information/insight:product_type = 'Mini-SEED')) 
                 ) 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_6: If the product_type is 'Mini-SEED', then the class ASCII_Equivalent must be
        present, and the value for ascii_equivalent_file_name must be the same as the Mini-SEED file name, except that it must end
        in 'a.csv' instead of '.mseed'. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED')
                      and
                     (matches(/pds:Product_Native/pds:Identification_Area/pds:logical_identifier,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_seed:',replace(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,'\.mseed$', '\$'))))) 
                   )
                     or 
                     (not(insight:Observation_Information/insight:product_type = 'Mini-SEED')) 
                  ) 
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_7: If the product_type is 'Mini-SEED', then the logical_identifier must be
        'urn:nasa:pds:insight_seis:data_seed:' followed by the file name in lowercase without the .mseed extension. </sch:assert>
      <sch:assert test="(
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED')
                      and
                     (matches(/pds:Product_Native/pds:Identification_Area/pds:logical_identifier,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_seed:',replace(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name,'\.seed$', '\$'))))) 
                   ) 
                   or 
                     (not(insight:Observation_Information/insight:product_type = 'Dataless-SEED'))
                 )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_8: If the product_type is 'Dataless-SEED', then the logical_identifier must be
        'urn:nasa:pds:insight_seis:data_seed:' followed by the file name in lowercase without the .seed extension. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:seis_data_type = 'metadata') 
                   )
                   or
                   ( not(insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                   )
                 )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_9: If the product_type is 'Dataless-SEED', then seis_data_type must be
        'metadata'. </sch:assert>
      <sch:assert test="(
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                      and
                     (not(insight:SEIS_Instrument_Parameters/insight:Metadata_Location)) 
                    )
                    or
                    ( not(insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_10: If the product_type is 'Dataless-SEED', then the class Metadata_Location must
        not be present. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                      and
                     ( (matches(lower-case(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/insight:ascii_equivalent_file_name),
                                lower-case(replace (replace(/pds:Product_Native/pds:File_Area_Native/pds:File/pds:file_name, 'dataless', 'stationxml'), 'seed', 'sxml'))))
                     )
                   ) 
                     or 
                    ( not (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_11: For a SEIS Dataless-SEED Product_Native product, the class ASCII_Equivalent
        must be present, and the value for ascii_equivalent_file_name must be the same as the Dataless-SEED file name, except that
        it must start with 'stationxml' instead of 'dataless', and end in '.sxml' instead of 'seed'. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:Metadata_Location/pds:Internal_Reference/pds:reference_type = 'data_to_metadata')
                   )
                   or
                   ( not(insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                   )
                 )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_12: For a SEIS Mini-SEED Product_Native product, the class Metadata_Location must
        be present, and the value for reference_type must be 'data_to_metadata'. </sch:assert>
      <sch:assert test="( 
                   ( 
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED')
                      and
                     (matches(insight:SEIS_Instrument_Parameters/insight:Metadata_Location/pds:Internal_Reference/pds:lid_reference,
                        lower-case(concat('urn:nasa:pds:insight_seis:data_seed:',replace(insight:SEIS_Instrument_Parameters/insight:Metadata_Location/insight:metadata_file_name,'\.seed$', '\$')))))
                   )
                   or
                     ( not(insight:Observation_Information/insight:product_type = 'Mini-SEED'))
                 )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_13: For a SEIS Mini-SEED Product_Native product, the class Metadata_Location must
        be present, and its lid_reference must be 'urn:nasa:pds:insight_seis:data_seed:' followed by the metadata_file_name
        in lowercase without the '.seed' extension. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/pds:Internal_Reference/pds:reference_type = 'seed_to_ascii')
                    )
                    or
                    ( not(insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_14: For a SEIS Mini-SEED Product_Native product, the class ASCII_Equivalent must
        be present, and the value for reference_type must be 'seed_to_ascii'. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                      and
                     (insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/pds:Internal_Reference/pds:reference_type = 'seed_to_ascii')
                    )
                    or
                    ( not(insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                    )
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_15: For a SEIS Dataless-SEED Product_Native product, the class ASCII_Equivalent
        must be present, and the value for reference_type must be 'seed_to_ascii'. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'Mini-SEED') 
                      and
                      (matches(substring-after(replace(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/pds:Internal_Reference/pds:lidvid_reference, '::[0-9]{1,2}\.[0-9]{1,2}', '.csv'), 'urn:nasa:pds:insight_seis:data_table:'), 
                      lower-case(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/insight:ascii_equivalent_file_name))
                      )
                    )
                    or
                     (not(insight:Observation_Information/insight:product_type = 'Mini-SEED'))
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_16: For a SEIS Mini-SEED Product_Native product, the class ASCII_Equivalent must
        be present, and its lidvid_reference must be 'urn:nasa:pds:insight_seis:data_table:' followed by the
        ascii_equivalent_file_name in lowercase without the '.csv' extension, followed by '::' and a version identifier. </sch:assert>
      <sch:assert test="( 
                   (
                     (insight:Observation_Information/insight:product_type = 'Dataless-SEED') 
                     and
                     (matches(substring-after(replace(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/pds:Internal_Reference/pds:lidvid_reference, '::[0-9]{1,2}\.[0-9]{1,2}', '.sxml'), 'urn:nasa:pds:insight_seis:data_table:'), 
                              lower-case(insight:SEIS_Instrument_Parameters/insight:ASCII_Equivalent/insight:ascii_equivalent_file_name))
                     )
                   )
                   or 
                     (not(insight:Observation_Information/insight:product_type = 'Dataless-SEED'))
                  )
      ">
        <title>seis_seed_product_native_rules/Rule</title>
         insight:error:seisseed_rule_17: For a SEIS Dataless-SEED Product_Native product, the class ASCII_Equivalent
        must be present, and its lidvid_reference must be 'urn:nasa:pds:insight_seis:data_table:' followed by the
        ascii_equivalent_file_name in lowercase without the '.sxml' extension, followed by '::' and a version identifier. </sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
