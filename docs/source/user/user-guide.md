PDS4 InSight Mission Data Dictionary User's Guide  
[Last edited](#edit-history): 2026-02-12  
  
# Introduction  
1. Purpose of this User's Guide  
    - This User's Guide provides an overview of the InSight Mission Data Dictionary. The guide details how to include the dictionary in a PDS4 label, describes the organization of the dictionary's classes and attributes, provides definitions for these classes and attributes, and lists example excerpts from labels that use them.  
2. Audience  
    - This User's Guide should be useful to data providers intending to archive InSight data with PDS as well as PDS Nodes who are working with these data providers.  
  
# Overview of the InSight Mission Data Dictionary  
The InSight Mission Data Dictionary contains classes and attributes specific to the InSight mission and its instruments.  
Steward: Jennifer Ward, PDS Geosciences Node, jgward@wustl.edu  
  
# Document Outline  
1. [How to Include the InSight Mission Data Dictionary in a PDS4 Label](#how-to-include-the-InSight-Mission-data-dictionary-in-a-pds4-label)  
2. [Organization of Classes and Attributes](#organization-of-classes-and-attributes)  
    1. [Class Organization](#class-organization)  
    2. [Attributes by Class](#attributes-by-class)  
3. [Definitions](#definitions)  
    1. [Classes (in alphabetical order)](#classes-in-alphabetical-order)  
    2. [Attributes (in alphabetical order)](#attributes-in-alphabetical-order)  
4. [Examples](#examples)  
5. [Edit History](#edit-history)  
  
# How to Include the InSight Mission Data Dictionary in a PDS4 Label  
The dictionary consists of a set of files with names in the form PDS4_INSIGHT_xxxx_yyyy.ext, where  
- xxxx = the PDS4 Information Model version, e.g. 1F00  
- yyyy = the InSight Mission Data Dictionary version, e.g. 1900  
  
and the file extensions are  
  
- .csv = A comma-separated value table of dictionary attributes  
- .JSON = The dictionary contents in JSON format  
- .sch = The dictionary "rules" as an XML Schematron file  
- .txt = The report generated when the dictionary was built  
- .xml = The PDS4 label that describes this set of files  
- .xsd = The dictionary contents as an XML schema file  
  
Only the schema and Schematron files are needed for validating a PDS4 label.  
  
The latest version of this dictionary may be found on the PDS web site at https://pds.nasa.gov/datastandards/dictionaries/index-missions.shtml#insight.  
  
The following is an example showing the use of this dictionary in a PDS4 label.  
  
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1F00.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<?xml-model href="https://pds.nasa.gov/pds4/mission/insight/v1/PDS4_INSIGHT_1F00_1900.sch" schematypens="http://purl.oclc.org/dsdl/schematron"?>
<Product_Observational xmlns="http://pds.nasa.gov/pds4/pds/v1"
    xmlns:insight="http://pds.nasa.gov/pds4/mission/insight/v1"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="https://pds.nasa.gov/pds4/pds/v1/PDS4_PDS_1F00.xsd
                        https://pds.nasa.gov/pds4/mission/insight/v1/PDS4_INSIGHT_1F00_1900.xsd">
```  
  
The following is a schematic example showing the location of every InSight Mission Data Dictionary class and attribute in a PDS4 label. Note that not all classes and attributes may be mutually compatible, and the example does not include any recursion, even if recursion is allowed.  
```
<Observation_Area>
  ...
  <Mission_Area>
    <insight:Observation_Information>
      <insight:release_number/>
      <insight:mission_phase_name/>
      <insight:product_type/>
      <insight:spacecraft_clock_start_count/>
      <insight:spacecraft_clock_stop_count/>
      <insight:spacecraft_clock_count_partition/>
      <insight:sol_number/>
      <insight:start_sol_number/>
      <insight:stop_sol_number/>
      <insight:start_local_mean_solar_time/>
      <insight:stop_local_mean_solar_time/>
      <insight:start_local_true_solar_time/>
      <insight:stop_local_true_solar_time/>
      <insight:local_true_solar_time_sol/>
      <insight:aobt_clock_start_count/>
      <insight:aobt_clock_stop_count/>
      <insight:lobt_clock_start_count/>
      <insight:lobt_clock_stop_count/>
      <insight:start_solar_longitude/>
      <insight:stop_solar_longitude/>
      <insight:mars_year/>
      <insight:software_name/>
      <insight:software_version_id/>
    </insight:Observation_Information>
    <insight:SEIS_Instrument_Parameters>
      <insight:seis_data_type/>
      <insight:seis_waveform_type/>
      <insight:channel_name/>
      <insight:signal_name/>
      <insight:sampling_rate/>
      <insight:sample_count/>
      <insight:Metadata_Location>
        <insight:metadata_file_name/>
        <insight:Internal_Reference>
        </insight:Internal_Reference>
      </insight:Metadata_Location>
      <insight:ASCII_Equivalent>
        <insight:ascii_equivalent_file_name/>
        <insight:Internal_Reference>
        </insight:Internal_Reference>
      </insight:ASCII_Equivalent>
      <insight:SEED_Equivalent>
        <insight:seed_file_name/>
        <insight:Internal_Reference>
        </insight:Internal_Reference>
      </insight:SEED_Equivalent>
    </insight:SEIS_Instrument_Parameters>
  </Mission_Area>
  ...
</Observation_Area>
```  
  
The namespace for the InSight Mission Data Dictionary is http://pds.nasa.gov/pds4/mission/insight/v1, abbreviated "insight:".  
  
# Organization of Classes and Attributes  
  
## Class Organization  
Below is a structured list showing the organization of classes, ordered by appearance in the PDS4 label. Each class name is linked to its complete definition in the [Definitions](#definitions) section.  
- [Observation_Information](#observation_information)  
- [SEIS_Instrument_Parameters](#seis_instrument_parameters)  
  - [Metadata_Location](#metadata_location)  
    - [Internal_Reference](#internal_reference)  
  - [ASCII_Equivalent](#ascii_equivalent)  
    - [Internal_Reference](#internal_reference)  
  - [SEED_Equivalent](#seed_equivalent)  
    - [Internal_Reference](#internal_reference)  
  
## Attributes by Class  
The attributes immediately under each class (if any) are listed below. Both classes and attributes are ordered by appearance in the PDS4 label; however, each class is listed only once, even if that class can appear in more than one place in a PDS4 label. Each class and attribute name is linked to its complete definition in the [Definitions](#definitions) section.  
  
### [Observation_Information](#observation_information) (attribute list)  
- [release_number](#release_number)  
- [mission_phase_name](#mission_phase_name)  
- [product_type](#product_type)  
- [spacecraft_clock_start_count](#spacecraft_clock_start_count)  
- [spacecraft_clock_stop_count](#spacecraft_clock_stop_count)  
- [spacecraft_clock_count_partition](#spacecraft_clock_count_partition)  
- [sol_number](#sol_number)  
- [start_sol_number](#start_sol_number)  
- [stop_sol_number](#stop_sol_number)  
- [start_local_mean_solar_time](#start_local_mean_solar_time)  
- [stop_local_mean_solar_time](#stop_local_mean_solar_time)  
- [start_local_true_solar_time](#start_local_true_solar_time)  
- [stop_local_true_solar_time](#stop_local_true_solar_time)  
- [local_true_solar_time_sol](#local_true_solar_time_sol)  
- [aobt_clock_start_count](#aobt_clock_start_count)  
- [aobt_clock_stop_count](#aobt_clock_stop_count)  
- [lobt_clock_start_count](#lobt_clock_start_count)  
- [lobt_clock_stop_count](#lobt_clock_stop_count)  
- [start_solar_longitude](#start_solar_longitude)  
- [stop_solar_longitude](#stop_solar_longitude)  
- [mars_year](#mars_year)  
- [software_name](#software_name)  
- [software_version_id](#software_version_id)  
  
### [SEIS_Instrument_Parameters](#seis_instrument_parameters) (attribute list)  
- [seis_data_type](#seis_data_type)  
- [seis_waveform_type](#seis_waveform_type)  
- [channel_name](#channel_name)  
- [signal_name](#signal_name)  
- [sampling_rate](#sampling_rate)  
- [sample_count](#sample_count)  
  
### [Metadata_Location](#metadata_location) (attribute list)  
- [metadata_file_name](#metadata_file_name)  
  
### [Internal_Reference](#internal_reference) (attribute list)  
  
### [ASCII_Equivalent](#ascii_equivalent) (attribute list)  
- [ascii_equivalent_file_name](#ascii_equivalent_file_name)  
  
### [SEED_Equivalent](#seed_equivalent) (attribute list)  
- [seed_file_name](#seed_file_name)  
  
# Definitions  
  
## Classes (in alphabetical order)  
  
### ASCII_Equivalent  
 The ASCII_Equivalent class contains attributes that identify and locate the ASCII data product equivalent to a given SEIS SEED data product.  
- [go to attribute list](#ascii_equivalent-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Internal_Reference  
The Internal_Reference class is used to cross-reference other products in PDS4-compliant registries of PDS and its recognized international partners.  
- [go to attribute list](#internal_reference-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### Metadata_Location  
 The Metadata_Location class contains attributes that identify and locate the metadata associated with a given SEIS data product.  
- [go to attribute list](#metadata_location-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### Observation_Information  
The Observation_Information class provides information about a science observation.  
- [go to attribute list](#observation_information-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### SEED_Equivalent  
 The SEED_Equivalent class contains attributes that identify and locate the SEED data product equivalent to a given SEIS ASCII data product.  
- [go to attribute list](#seed_equivalent-attribute-list)  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### SEIS_Instrument_Parameters  
Attributes specific to the InSight Seismometer data products  
- [go to attribute list](#seis_instrument_parameters-attribute-list)  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
## Attributes (in alphabetical order)  
  
### *aobt_clock_start_count*  
The aobt_clock_start_count specifies the number of 1/1024 seconds recorded on the APSS On Board Time clock at the beginning of an observation.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *aobt_clock_stop_count*  
The aobt_clock_stop_count specifies the number of 1/1024 seconds recorded on the APSS On Board Time clock at the end of an observation.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *ascii_equivalent_file_name*  
 SEIS data products are archived in their native SEED format and in a PDS-compatible ASCII format. The ascii_equivalent_file_name attribute gives the name of the file that is the ASCII equivalent of a SEED format file.  
- PDS4 data type: ASCII_File_Name  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *channel_name*  
A SEIS data product contains data from a single location and single instrument channel. The channel_name uniquely identifies the location and channel pair using the format NN.AAA, where NN is a two-digit location number and AAA is a three-character channel code (letters or digits). The complete list of channel names may be found in the Channel Naming document in the SEIS document collection.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 6  
- Maximum Length: 6  
- Regex Pattern: [0-9]{2}\.([A-Z]|[a-z]|[0-9]){3}  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *lobt_clock_start_count*  
The lobt_clock_start_count specifies the number of 1/1024 seconds recorded on the Lander On Board Time clock at the beginning of an observation.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *lobt_clock_stop_count*  
The lobt_clock_stop_count specifies the number of 1/1024 seconds recorded on the Lander On Board Time clock at the end of an observation.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *local_true_solar_time_sol*  
The local_true_solar_time_sol element specifies the number of solar days elapsed since a reference day (e.g. the day on which a landing vehicle set down) for local true solar time (LTST). Days are measured in rotations of the planet in question from midnight to midnight. The reference day is '0', as Landing day is Sol 0. If before Landing day, then value will be less than or equal to '0' and can be negative.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *mars_year*  
The mars_year element specifies the number of the Mars year relative to the reference date of April 11, 1955 (Mars solar longitude 0), which is defined as the start of Mars year 1.  
- PDS4 data type: ASCII_NonNegative_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 18446744073709551615  
- Regex Pattern: [0-9]+  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *metadata_file_name*  
 SEIS observations are stored with the seismic data from the instrument in one file (mini-SEED or GeoCSV format) and the metadata for the measurements in another file (dataless SEED or StationXML format). The metadata_file_name attribute gives the name of the file containing the metadata associated with a given data file.  
- PDS4 data type: ASCII_File_Name  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *mission_phase_name*  
The mission_phase_name identifies a time period within the mission.  
- PDS4 data type: ASCII_Short_String_Preserved  
- Valid values:  
  - ATLO  
    - Description: The ATLO mission phase (Assembly, Test, and Launch Operations) is the time of spacecraft and instrument assembly and test. During this phase data products are generated using flight hardware. They are usually not part of the final PDS archive but may be used for testing and peer review.  
  - CRUISE  
    - Description: The cruise mission phase is from the time of escape from Earth's orbit through the time of entry into Mars' orbit. Some data products may be generated during this time, including instrument checkout data.  
  - DEVELOPMENT  
    - Description: The development mission phase refers to the period of data processing software development and testing, before instruments are integrated with the spacecraft. Data products generated during this phase are usually not part of the final PDS archive but may be used for testing and peer review.  
  - SURFACE MISSION  
    - Description: The surface mission phase is the time from arrival at Mars through the end of surface operations, including the primary mission and any extended missions that may take place.  
  - TEST  
    - Description: The test mission phase is not a time period but a placeholder for the mission_phase_name value, used for data products generating during all project tests such as ORTs, SVTs and thread tests. Data products generated in this way are usually not part of the final PDS archive but may be used for testing and peer review.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *product_type*  
The product_type identifies a group of data products within a collection that have some property in common, such as processing level, resolution, or instrument-specific setting.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - ARK  
    - Description: Insight Camera data. Arm Reachability Mask  
  - ARM  
    - Description: Insight Camera data. Arm Reachability  
  - ARO  
    - Description: Insight Camera data. Arm Reachability with overlay  
  - BAY  
    - Description: Insight Camera data. Bayer pattern (identical to EDR except for Bayer pattern extract)  
  - CLM  
    - Description: Insight Camera data. Color-calibrated image, masked  
  - CLR  
    - Description: Insight Camera data. Color-calibrated image  
  - DDD  
    - Description: Insight Camera data. Stereo Delta Disparity (2-band, true disparity offset)  
  - DDL  
    - Description: Insight Camera data. Stereo Delta Disparity Line (single-band)  
  - DDS  
    - Description: Insight Camera data. Stereo Delta Disparity Sample (single-band)  
  - DEM  
    - Description: Insight Camera data. Digital Elevation Model. Identical to ZZZ except positive is up.  
  - DFF  
    - Description: Insight Camera data. Stereo First-stage Disparity Final  
  - DFL  
    - Description: Insight Camera data. Stereo First-stage Disparity Line  
  - DFS  
    - Description: Insight Camera data. Stereo First-stage Disparity Sample  
  - DSE  
    - Description: Insight Camera data. Stereo Disparity Error Metric  
  - DSG  
    - Description: Insight Camera data. Stereo Disparity Grid  
  - DSL  
    - Description: Insight Camera data. Stereo Disparity of Lines (single-band)  
  - DSP  
    - Description: Insight Camera data. Stereo Disparity Final  
  - DSR  
    - Description: Insight Camera data. Stereo Disparity Raw  
  - DSS  
    - Description: Insight Camera data. Stereo Disparity of Samples (single-band)  
  - Dataless-SEED  
    - Description: Insight SEIS product containing seismic metadata in SEED format.  
  - EDR  
    - Description: Experiment Data Record. Lowest processing level  
  - EJP  
    - Description: Insight Camera data. Original JPEG as received from the lander.  
  - ERP  
    - Description: Insight Camera data. Reference Pixel  
  - GUH  
    - Description: Insight Camera data. Overall goodness map for HP3  
  - GUS  
    - Description: Insight Camera data. Overall goodness map for SEIS/WTS  
  - GeoCSV  
    - Description: Insight SEIS product containing seismic data in an ASCII table in GeoCSV format.  
  - IDA_History  
    - Description: Insight Deployment Arm History Ancillary Data  
  - IDA_Parameters  
    - Description: Insight Deployment Arm Parameters Ancillary Data  
  - IDA_SciHi  
    - Description: Insight Deployment Arm High Priority Science/Engineering Data  
  - IDA_SciLo  
    - Description: Insight Deployment Arm Low Priority Science/Engineering Data  
  - IDA_Status  
    - Description: Insight Deployment Arm Status Ancillary Data  
  - IDA_Video  
    - Description: Insight Deployment Arm Status Ancillary Data  
  - IEF  
    - Description: Insight Camera data. Incidence, Emission, Phase angles Filled  
  - IEP  
    - Description: Insight Camera data. Incidence, Emission, Phase angles  
  - ILC  
    - Description: Insight Camera data. Inverse lookup table (ILUT) with corrections such as de-spike  
  - ILM  
    - Description: Insight Camera data. Inverse Lookup Tabel (ILT), masked  
  - ILP  
    - Description: Insight Camera data. Inverse lookup table (ILUT) with pointing correction applied  
  - ILT  
    - Description: Insight Camera data. Inverse lookup table (ILUT)  
  - IOF  
    - Description: Insight Camera data. Rad-corrected IOF radiance factor, float  
  - IOI  
    - Description: Insight Camera data. Rad-corrected IOF radiance factor, integer  
  - ION  
    - Description: DSN TRK 2-23 ionosphere calibration data  
  - LANDER_COORD  
    - Description: InSIGHT RISE derived data. Lander coordinates.  
  - LIN  
    - Description: Insight Camera data. CAHV-linearized (identical to EDR except for Geometry type)  
  - MAR  
    - Description: Insight Camera data. Arm Reachability Mask File  
  - MDS  
    - Description: Insight Camera data. Stereo Disparity Mask File  
  - MSK  
    - Description: Insight Camera data. Image Mask File  
  - MXY  
    - Description: Insight Camera data. XYZ Mask File  
  - Mini-SEED  
    - Description: Insight SEIS product containing seismic data in mini-SEED format.  
  - RAD  
    - Description: Insight Camera data. Rad-corrected absolute radiance units, integer  
  - RAD-calibrated  
    - Description: HP3/RAD calibrated radiometer data  
  - RAD-derived  
    - Description: HP3/RAD derived radiometer data  
  - RAD-raw  
    - Description: HP3/RAD raw radiometer data  
  - RAF  
    - Description: Insight Camera data. Rad-corrected absolute radiance units, float  
  - RAS  
    - Description: Insight Camera data. Rad-corrected absolute radiance units, scaled to 12-bit  
  - RDM  
    - Description: Insight Camera data. Rad-corrected radiance (RAD), masked  
  - RDR  
    - Description: Reduced Data Record, a general term for any processing level above EDR.  
  - RIE  
    - Description: Insight Camera data. Rad-corrected for Instrument Effects only, integer DN  
  - RIF  
    - Description: Insight Camera data. Rad-corrected for Instrument Effects only, float  
  - RNE  
    - Description: Insight Camera data. Range Error Metric  
  - RNF  
    - Description: Insight Camera data. Range Filled  
  - RNG  
    - Description: Insight Camera data. Range from Camera  
  - RNM  
    - Description: Insight Camera data. Range from Camera, Masked  
  - RNO  
    - Description: Insight Camera data. Range with Overlay  
  - RNR  
    - Description: Insight Camera data. Range from Rover Nav frame origin  
  - ROTATION_PARAMETERS  
    - Description: Insight RISE derived data. Mars rotation parameters.  
  - RSM  
    - Description: Insight Camera data. Rad-corrected scaled radiance (RAS), masked  
  - RUH  
    - Description: Insight Camera data. Surface Roughness map for HP3  
  - RUS  
    - Description: Insight Camera data. Surface Roughness map for SEIS/WTS  
  - SHD  
    - Description: Insight Camera data. Slope Heading Map  
  - SHO  
    - Description: Insight Camera data. Slope Heading with Overlay  
  - SLO  
    - Description: Insight Camera data. Slope with Overlay  
  - SLP  
    - Description: Insight Camera data. Slope  
  - SMG  
    - Description: Insight Camera data. Slope Magnitude  
  - SMO  
    - Description: Insight Camera data. Slope Magnitude with Overlay  
  - SNO  
    - Description: Insight Camera data. Slope Northerly Tilt with Overlay  
  - SNT  
    - Description: Insight Camera data. Slope Northerly Tilt  
  - STATIL-calibrated  
    - Description: HP3/RAD calibrated static tilt data  
  - STATIL-raw  
    - Description: HP3/RAD raw static tilt data  
  - StationXML  
    - Description: Insight SEIS product containing seismic metadata in StationXML format.  
  - TAU  
    - Description: Insight Camera data. Tau report  
  - TDM  
    - Description: DSN Tracking Data Message data  
  - TDS  
    - Description: Insight Camera data. Delta Tilt map for SEIS/WTS  
  - TEM-A-calibrated  
    - Description: HP3/RAD calibrated active temperature data  
  - TEM-P-calibrated  
    - Description: HP3/RAD calibrated passive temperature data  
  - TEM-calibrated  
    - Description: HP3/RAD calibrated active and passive temperature data  
  - TEM-raw  
    - Description: HP3/RAD raw temperature data  
  - TFH  
    - Description: Insight Camera data. Tilt map for HP3  
  - TFS  
    - Description: Insight Camera data. Tilt map for SEIS  
  - TFW  
    - Description: Insight Camera data. Tilt map for WTS  
  - TLM-raw  
    - Description: HP3/RAD raw tether length monitor data  
  - TNF  
    - Description: DSN TRK 2-34 tracking and navigation data  
  - TRO  
    - Description: DSN TRK 2-23 troposphere calibration data  
  - UIH  
    - Description: Insight Camera data. Instrument Normal for HP3.  
  - UIS  
    - Description: Insight Camera data. Instrument Normal for SEIS.  
  - UIW  
    - Description: Insight Camera data. Instrument Normal for WTS.  
  - UUF  
    - Description: Insight Camera data. Surface Normal (UVW) U-band Filled  
  - UUU  
    - Description: Insight Camera data. Surface Normal (UVW) U-band  
  - UVF  
    - Description: Insight Camera data. Surface Normal (UVW) Filled  
  - UVO  
    - Description: Insight Camera data. Surface Normal (UVW) with Overlay  
  - UVP  
    - Description: Insight Camera data. Surface Normal (UVW) Projected onto Plane  
  - UVS  
    - Description: Insight Camera data. Surface Normal (UVW) for Slope computations  
  - UVT  
    - Description: Insight Camera data. Surface Normal (UVW) Angle ('T' for theta) between Normal and Plane  
  - UVW  
    - Description: Insight Camera data. Surface Normal (UVW)  
  - VVF  
    - Description: Insight Camera data. Surface Normal (UVW) V-band Filled  
  - VVV  
    - Description: Insight Camera data. Surface Normal (UVW) V-band  
  - WEA  
    - Description: DSN TRK 2-24 weather data  
  - WSH  
    - Description: Insight Camera data. Workspace boundary for HP3  
  - WSS  
    - Description: Insight Camera data. Workspace boundary for SEIS and WTS  
  - WWF  
    - Description: Insight Camera data. Surface Normal (UVW) W-band Filled  
  - WWW  
    - Description: Insight Camera data. Surface Normal (UVW) W-band  
  - XXF  
    - Description: Insight Camera data. XYZ X-band Filled  
  - XXX  
    - Description: Insight Camera data. XYZ X-band  
  - XYE  
    - Description: Insight Camera data. XYZ Error Metric  
  - XYF  
    - Description: Insight Camera data. XYZ Filled  
  - XYM  
    - Description: Insight Camera data. XYZ Masked  
  - XYO  
    - Description: Insight Camera data. XYZ with Overlay  
  - XYR  
    - Description: Insight Camera data. XYZ expressed in Rover Nav frame  
  - XYZ  
    - Description: Insight Camera data. XYZ expressed in Site frame  
  - YYF  
    - Description: Insight Camera data. XYZ Y-band Filled  
  - YYY  
    - Description: Insight Camera data. XYZ Y-band  
  - ZIH  
    - Description: Insight Camera data. Instrument Z for HP3.  
  - ZIS  
    - Description: Insight Camera data. Instrument Z for SEIS.  
  - ZIW  
    - Description: Insight Camera data. Instrument Z for WTS.  
  - ZZF  
    - Description: Insight Camera data. XYZ Z-band Filled  
  - ZZZ  
    - Description: Insight Camera data. XYZ Z-band  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *release_number*  
Release_number is the number of a scheduled release of InSight data from PDS. The first Insight data release is Release 1a. The release_number for a given product is always the first release in which it appears, and does not change if the product is revised later.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 5  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *sample_count*  
Sample_count is the number of samples in a SEIS mini-SEED or GeoCSV product.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: -9223372036854775808  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *sampling_rate*  
Sampling_rate represents the number of samples per second (local on-board seconds). Because the instrument (EBox) clock drift is dependent on temperature, sampling_rate various over UTC time. However, this variation is small enough so as to be negligible and can be ignored for scientific analyses.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: -1.7976931348623157e+308  
- Maximum value: 1.7976931348623157e+308  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *seed_file_name*  
 SEIS data products are archived in their native SEED format and in a PDS-compatible ASCII format. The seed_file_name attribute gives the name of the file that is the SEED equivalent of an ASCII data file.  
- PDS4 data type: ASCII_File_Name  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *seis_data_type*  
SEIS mini-SEED products and their equivalent GeoCSV products contain only seismic data, and therefore have the seis_data_type "waveform". SEIS dataless SEED products and their equivalent StationXML products contain only metadata for the seismic data files, and therefore have the seis_data_type "metadata".  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - metadata  
    - Description: The data product contains only metadata.  
  - waveform  
    - Description: The data product contains only seismic data.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 1  
- Maximum occurrences: 1  
  
### *seis_waveform_type*  
SEIS mini-SEED products and their equivalent GeoCSV products contain either continuous data, with one data product per UTC day, or event data, with one data product per event. An event may last several minutes. Continuous data products have seis_waveform_type "continuous". Event data products have seis_waveform_type "event".  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values:  
  - continuous  
    - Description: The data product contains continuous seismic data.  
  - event  
    - Description: The data product contains event seismic data.  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *signal_name*  
The signal name is a short descriptive English name corresponding to a combination of SEIS channel code and location code. There are more than 1000 such combinations.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *software_name*  
Software_name identifies the processing software used to generate a data product.  
- PDS4 data type: ASCII_Short_String_Preserved  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *software_version_id*  
Software_version_id identifies the version of the processing software used to generate a data product.  
- PDS4 data type: ASCII_Short_String_Preserved  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 255  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *sol_number*  
Sol_number is the number of the Mars day on which an observation was acquired. Landing day is Sol 0.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_count_partition*  
The spacecraft_clock_count_partition provides the clock partition active for the spacecraft_clock_start_count and spacecraft_clock_stop_count attributes. This attribute may be used when the spacecraft_clock values do not include a partition number.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 1  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_start_count*  
The spacecraft_clock_start_count is the value of the spacecraft clock at the beginning of an observation. It represents the number of ticks. If a fractional value is present, it represents the number of 1/65536 ticks.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 18  
- Regex Pattern: ([1-9]/)?[0-9]{1,10}(\-[0-9]{5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *spacecraft_clock_stop_count*  
The spacecraft_clock_stop_count is the value of the spacecraft clock at the end of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 1  
- Maximum Length: 18  
- Regex Pattern: ([1-9]/)?[0-9]{1,10}(\-[0-9]{5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *start_local_mean_solar_time*  
Start_local_mean_solar_time is the local mean solar time, as defined in the main PDS4 data dictionary, at the beginning of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 10  
- Maximum Length: 24  
- Regex Pattern: (Sol\-)?[0-9]{1,5}M[0-2][0-9]:[0-5][0-9]:[0-5][0-9](\.[0-9]{1,5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *start_local_true_solar_time*  
Start_local_true_solar_time is the local true solar time, as defined in the main PDS4 data dictionary, at the beginning of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 8  
- Maximum Length: 24  
- Regex Pattern: ((Sol\-)?[0-9]{1,5} )?[0-2][0-9]:[0-5][0-9]:[0-5][0-9](\.[0-9]{1,5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *start_sol_number*  
Start_sol_number is the number of the Mars day on which a multiple-day observation was begun. Landing day is Sol 0.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *start_solar_longitude*  
Start_solar_longitude is the solar longitude, as defined in the main PDS4 data dictionary, at the beginning of an observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 360  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *stop_local_mean_solar_time*  
Stop_local_mean_solar_time is the local mean solar time, as defined in the main PDS4 data dictionary, at the end of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 10  
- Maximum Length: 24  
- Regex Pattern: (Sol\-)?[0-9]{1,5}M[0-2][0-9]:[0-5][0-9]:[0-5][0-9](\.[0-9]{1,5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *stop_local_true_solar_time*  
Stop_local_true_solar_time is the local true solar time, as defined in the main PDS4 data dictionary, at the end of an observation.  
- PDS4 data type: ASCII_Short_String_Collapsed  
- Valid values: N/A  
- Minimum Length: 8  
- Maximum Length: 24  
- Regex Pattern: ((Sol\-)?[0-9]{1,5} )?[0-2][0-9]:[0-5][0-9]:[0-5][0-9](\.[0-9]{1,5})?  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *stop_sol_number*  
Stop_sol_number is the number of the Mars day on which a multiple-day observation was ended. Landing day is Sol 0.  
- PDS4 data type: ASCII_Integer  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 9223372036854775807  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
### *stop_solar_longitude*  
Stop_solar_longitude is the solar longitude, as defined in the main PDS4 data dictionary, at the end of an observation.  
- PDS4 data type: ASCII_Real  
- Valid values: N/A  
- Minimum value: 0  
- Maximum value: 360  
- Nillable: No  
- Minimum occurrences: 0  
- Maximum occurrences: 1  
  
# Examples  
  
Example PDS4 label snippet from urn:nasa:pds:insight_seis:data_table:xb.elyh0.02.vma.2018.334.2.a::1.0:  
```
<Mission_Area>
  <insight:Observation_Information>
    <insight:release_number>18</insight:release_number>
    <insight:mission_phase_name>SURFACE MISSION</insight:mission_phase_name>
    <insight:product_type>GeoCSV</insight:product_type>
    <insight:start_sol_number>4</insight:start_sol_number>
    <insight:stop_sol_number>4</insight:stop_sol_number>
  </insight:Observation_Information>
  <insight:SEIS_Instrument_Parameters>
    <insight:seis_data_type>waveform</insight:seis_data_type>
    <insight:seis_waveform_type>continuous</insight:seis_waveform_type>
    <insight:Metadata_Location>
      <insight:metadata_file_name>stationxml.xb.elyh0.2023.163.sxml</insight:metadata_file_name>
      <Internal_Reference>
        <lid_reference>urn:nasa:pds:insight_seis:data_table:stationxml.xb.elyh0.2023.163</lid_reference>
        <reference_type>data_to_metadata</reference_type>
      </Internal_Reference>
    </insight:Metadata_Location>
    <insight:SEED_Equivalent>
      <insight:seed_file_name>xb.elyh0.02.vma.2018.334.2.mseed</insight:seed_file_name>
      <Internal_Reference>
        <lidvid_reference>urn:nasa:pds:insight_seis:data_seed:xb.elyh0.02.vma.2018.334.2::1.0</lidvid_reference>
        <reference_type>ascii_to_seed</reference_type>
      </Internal_Reference>
    </insight:SEED_Equivalent>
    <insight:channel_name>02.vma</insight:channel_name>
    <insight:signal_name>sp-hk1-mpos1</insight:signal_name>
    <insight:sampling_rate unit="Hz">0.25</insight:sampling_rate>
    <insight:sample_count>75</insight:sample_count>
  </insight:SEIS_Instrument_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:insight_rad:data_derived:hp3_rad_der_00305_20191006_053040::1.0:  
```
<Mission_Area>
  <insight:Observation_Information>
    <insight:release_number>0004</insight:release_number>
    <insight:mission_phase_name>SURFACE MISSION</insight:mission_phase_name>
    <insight:product_type>RAD-derived</insight:product_type>
    <insight:spacecraft_clock_start_count>623611776-38863</insight:spacecraft_clock_start_count>
    <insight:spacecraft_clock_stop_count>631105491-14156</insight:spacecraft_clock_stop_count>
    <insight:spacecraft_clock_count_partition>1</insight:spacecraft_clock_count_partition>
    <insight:start_sol_number>00305</insight:start_sol_number>
    <insight:stop_sol_number>00390</insight:stop_sol_number>
    <insight:start_local_mean_solar_time>Sol-00305M14:40:03</insight:start_local_mean_solar_time>
    <insight:stop_local_mean_solar_time>Sol-00390M00:33:49</insight:stop_local_mean_solar_time>
    <insight:start_solar_longitude unit="deg">89.169</insight:start_solar_longitude>
    <insight:stop_solar_longitude unit="deg">128.783</insight:stop_solar_longitude>
    <insight:software_name>XML Archiv Tool</insight:software_name>
    <insight:software_version_id>1.0.2</insight:software_version_id>
  </insight:Observation_Information>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:insight_seis:data_seed:xb.elyh0.02.vma.2018.334.2::1.0:  
```
<Mission_Area>
  <insight:Observation_Information>
    <insight:release_number>18</insight:release_number>
    <insight:mission_phase_name>SURFACE MISSION</insight:mission_phase_name>
    <insight:product_type>Mini-SEED</insight:product_type>
    <insight:start_sol_number>4</insight:start_sol_number>
    <insight:stop_sol_number>4</insight:stop_sol_number>
  </insight:Observation_Information>
  <insight:SEIS_Instrument_Parameters>
    <insight:seis_data_type>waveform</insight:seis_data_type>
    <insight:seis_waveform_type>continuous</insight:seis_waveform_type>
    <insight:Metadata_Location>
      <insight:metadata_file_name>dataless.xb.elyh0.2023.163.seed</insight:metadata_file_name>
      <Internal_Reference>
        <lid_reference>urn:nasa:pds:insight_seis:data_seed:dataless.xb.elyh0.2023.163</lid_reference>
        <reference_type>data_to_metadata</reference_type>
      </Internal_Reference>
    </insight:Metadata_Location>
    <insight:ASCII_Equivalent>
      <insight:ascii_equivalent_file_name>xb.elyh0.02.vma.2018.334.2.a.csv</insight:ascii_equivalent_file_name>
      <Internal_Reference>
        <lidvid_reference>urn:nasa:pds:insight_seis:data_table:xb.elyh0.02.vma.2018.334.2.a::1.0</lidvid_reference>
        <reference_type>seed_to_ascii</reference_type>
      </Internal_Reference>
    </insight:ASCII_Equivalent>
    <insight:channel_name>02.vma</insight:channel_name>
    <insight:signal_name>sp-hk1-mpos1</insight:signal_name>
    <insight:sampling_rate unit="Hz">0.25</insight:sampling_rate>
    <insight:sample_count>75</insight:sample_count>
  </insight:SEIS_Instrument_Parameters>
</Mission_Area>
```  
  
Example PDS4 label snippet from urn:nasa:pds:insight_twins:data_calibrated:twins_calib_0392::1.0:  
```
<Mission_Area>
  <insight:Observation_Information>
    <insight:release_number>5</insight:release_number>
    <insight:spacecraft_clock_start_count>631280871.335</insight:spacecraft_clock_start_count>
    <insight:spacecraft_clock_stop_count>631369645.450</insight:spacecraft_clock_stop_count>
    <insight:sol_number>392</insight:sol_number>
    <insight:start_local_mean_solar_time>00392M00:00:00.767</insight:start_local_mean_solar_time>
    <insight:stop_local_mean_solar_time>00392M23:59:59.807</insight:stop_local_mean_solar_time>
    <insight:start_local_true_solar_time>00392 00:25:10</insight:start_local_true_solar_time>
    <insight:stop_local_true_solar_time>00393 00:25:19</insight:stop_local_true_solar_time>
    <insight:start_solar_longitude unit="deg">129.789</insight:start_solar_longitude>
    <insight:stop_solar_longitude unit="deg">130.283</insight:stop_solar_longitude>
  </insight:Observation_Information>
</Mission_Area>
```  
  
# Edit History  
*See also: [INSIGHT change log](https://github.com/pds-data-dictionaries/ldd-insight/blob/main/CHANGELOG.md).*  
2026-02-12  Jennifer Ward