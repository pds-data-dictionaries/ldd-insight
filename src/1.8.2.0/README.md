# InSight Mission Local Data Dictionary

The InSight mission dictionary contains classes and attributes specific to
    the InSight mission and its instruments.
    
    InSight version 1.8.2.0 last updated 2018-06-28 14:50Z
    PDS Build 1.10.1.0
    LDDTool version 8.1.0
    
    Built with LDDTool -plM

Version: 1.8.2.0  
Steward: geo

## Classes

### Observation_Information
The Observation_Information class provides information about a science
      observation.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[release_number](#release_number) | 0 | 1
[mission_phase_name](#mission_phase_name) | 0 | 1
[product_type](#product_type) | 0 | 1
[spacecraft_clock_start_count](#spacecraft_clock_start_count) | 0 | 1
[spacecraft_clock_stop_count](#spacecraft_clock_stop_count) | 0 | 1
[spacecraft_clock_count_partition](#spacecraft_clock_count_partition) | 0 | 1
[sol_number](#sol_number) | 0 | 1
[start_sol_number](#start_sol_number) | 0 | 1
[stop_sol_number](#stop_sol_number) | 0 | 1
[start_local_mean_solar_time](#start_local_mean_solar_time) | 0 | 1
[stop_local_mean_solar_time](#stop_local_mean_solar_time) | 0 | 1
[start_local_true_solar_time](#start_local_true_solar_time) | 0 | 1
[stop_local_true_solar_time](#stop_local_true_solar_time) | 0 | 1
[local_true_solar_time_sol](#local_true_solar_time_sol) | 0 | 1
[start_solar_longitude](#start_solar_longitude) | 0 | 1
[stop_solar_longitude](#stop_solar_longitude) | 0 | 1
[mars_year](#mars_year) | 0 | 1
[software_name](#software_name) | 0 | 1
[software_version_id](#software_version_id) | 0 | 1

### Metadata_Location
The Metadata_Location class contains attributes that identify
       and locate the metadata associated with a given SEIS data product.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[metadata_file_name](#metadata_file_name) | 1 | 1
pds.Internal_Reference | 1 | 1

### ASCII_Equivalent
The ASCII_Equivalent class contains attributes that identify
       and locate the ASCII data product equivalent to a given SEIS SEED data product.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[ascii_equivalent_file_name](#ascii_equivalent_file_name) | 1 | 1
pds.Internal_Reference | 1 | 1

### SEED_Equivalent
The SEED_Equivalent class contains attributes that identify
       and locate the SEED data product equivalent to a given SEIS ASCII data product.

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[seed_file_name](#seed_file_name) | 1 | 1
pds.Internal_Reference | 1 | 1

### SEIS_Instrument_Parameters
Attributes specific to the InSight Seismometer data products

Attribute    | Min Occur. | Max Occur.  
------------ | ---------- | ----------- 
[seis_data_type](#seis_data_type) | 1 | 1
[Metadata_Location](#metadata_location) | 0 | 1
[ASCII_Equivalent](#ascii_equivalent) | 0 | 1
[SEED_Equivalent](#seed_equivalent) | 0 | 1
[channel_name](#channel_name) | 0 | 1
[sampling_rate](#sampling_rate) | 0 | 1
[sample_count](#sample_count) | 0 | 1
## Attributes


### local_true_solar_time_sol
The local_true_solar_time_sol element specifies the number of solar days elapsed
      since a reference day (e.g. the day on which a landing vehicle set down) for local true solar
      time (LTST). Days are measured in rotations of the planet in question from midnight to
      midnight. The reference day is '0', as Landing day is Sol 0. If before Landing day, then value
      will be less than or equal to '0' and can be negative.

Type: ASCII_Integer  
Units: undefined  



### mars_year
The mars_year element specifies the number of the Mars year relative to the
       reference date of April 11, 1955 (Mars solar longitude 0), which is defined as 
       the start of Mars year 1.

Type: ASCII_NonNegative_Integer  
Units: undefined  



### mission_phase_name
The mission_phase_name identifies a time period within the mission.

Type: ASCII_Short_String_Preserved  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
ATLO | The ATLO mission phase (Assembly, Test, and Launch Operations) is the 
          time of spacecraft and instrument assembly and test. During this phase data products 
          are generated using flight hardware. They are usually not part of the final PDS 
          archive but may be used for testing and peer review.
CRUISE | The cruise mission phase is from the time of escape from Earth's orbit
          through the time of entry into Mars' orbit. Some data products may be generated
          during this time, including instrument checkout data.
DEVELOPMENT | The development mission phase refers to the period of data processing 
          software development and testing, before instruments are integrated with the spacecraft.
          Data products generated during this phase are usually not part of the final PDS archive
          but may be used for testing and peer review.
SURFACE MISSION | The surface mission phase is the time from arrival at Mars through the
          end of surface operations, including the primary mission and any extended missions 
          that may take place.
TEST | The test mission phase is not a time period but a placeholder for the 
          mission_phase_name value, used for data products generating during all project tests
          such as ORTs, SVTs and thread tests. Data products generated in this way are usually 
          not part of the final PDS archive but may be used for testing and peer review.


### product_type
The product_type identifies a group of data products within a collection that have
      some property in common, such as processing level, resolution, or instrument-specific setting.

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
ARK | Insight Camera data. Arm Reachability Mask
ARM | Insight Camera data. Arm Reachability
ARO | Insight Camera data. Arm Reachability with overlay
BAY | Insight Camera data. Bayer pattern (identical to EDR except for Bayer pattern extract)
CLM | Insight Camera data. Color-calibrated image, masked
CLR | Insight Camera data. Color-calibrated image
Dataless-SEED | Insight SEIS product containing seismic metadata in SEED format.
DDD | Insight Camera data. Stereo Delta Disparity (2-band, true disparity offset)
DDL | Insight Camera data. Stereo Delta Disparity Line (single-band)
DDS | Insight Camera data. Stereo Delta Disparity Sample (single-band)
DEM | Insight Camera data. Digital Elevation Model. Identical to ZZZ except positive is up.
DFF | Insight Camera data. Stereo First-stage Disparity Final
DFL | Insight Camera data. Stereo First-stage Disparity Line
DFS | Insight Camera data. Stereo First-stage Disparity Sample
DSE | Insight Camera data. Stereo Disparity Error Metric
DSG | Insight Camera data. Stereo Disparity Grid
DSL | Insight Camera data. Stereo Disparity of Lines (single-band)
DSP | Insight Camera data. Stereo Disparity Final
DSR | Insight Camera data. Stereo Disparity Raw
DSS | Insight Camera data. Stereo Disparity of Samples (single-band)
EDR | Experiment Data Record. Lowest processing level
EJP | Insight Camera data. Original JPEG as received from the lander.
ERP | Insight Camera data. Reference Pixel
GeoCSV | Insight SEIS product containing seismic data in an ASCII table in GeoCSV format.
GUH | Insight Camera data. Overall goodness map for HP3
GUS | Insight Camera data. Overall goodness map for SEIS/WTS
IEF | Insight Camera data. Incidence, Emission, Phase angles Filled
IEP | Insight Camera data. Incidence, Emission, Phase angles
ILC | Insight Camera data. Inverse lookup table (ILUT) with corrections such as de-spike
ILM | Insight Camera data. Inverse Lookup Tabel (ILT), masked
ILP | Insight Camera data. Inverse lookup table (ILUT) with pointing correction applied
ILT | Insight Camera data. Inverse lookup table (ILUT)
IOF | Insight Camera data. Rad-corrected IOF radiance factor, float
IOI | Insight Camera data. Rad-corrected IOF radiance factor, integer
ION | DSN TRK 2-23 ionosphere calibration data
LANDER_COORD | InSIGHT RISE derived data. Lander coordinates.
LIN | Insight Camera data. CAHV-linearized (identical to EDR except for Geometry type)
MAR | Insight Camera data. Arm Reachability Mask File
MDS | Insight Camera data. Stereo Disparity Mask File
Mini-SEED | Insight SEIS product containing seismic data in mini-SEED format.
MSK | Insight Camera data. Image Mask File
MXY | Insight Camera data. XYZ Mask File
RAD | Insight Camera data. Rad-corrected absolute radiance units, integer
RAD-raw | HP3/RAD raw radiometer data
RAD-calibrated | HP3/RAD calibrated radiometer data
RAD-derived | HP3/RAD derived radiometer data
RAF | Insight Camera data. Rad-corrected absolute radiance units, float
RAS | Insight Camera data. Rad-corrected absolute radiance units, scaled to 12-bit
RDM | Insight Camera data. Rad-corrected radiance (RAD), masked
RDR | Reduced Data Record, a general term for any processing level above EDR.
RIE | Insight Camera data. Rad-corrected for Instrument Effects only, integer DN
RIF | Insight Camera data. Rad-corrected for Instrument Effects only, float
RNE | Insight Camera data. Range Error Metric
RNF | Insight Camera data. Range Filled
RNG | Insight Camera data. Range from Camera
RNM | Insight Camera data. Range from Camera, Masked
RNO | Insight Camera data. Range with Overlay
RNR | Insight Camera data. Range from Rover Nav frame origin
RSM | Insight Camera data. Rad-corrected scaled radiance (RAS), masked
ROTATION_PARAMETERS | Insight RISE derived data. Mars rotation parameters.
RUH | Insight Camera data. Surface Roughness map for HP3
RUS | Insight Camera data. Surface Roughness map for SEIS/WTS
SHD | Insight Camera data. Slope Heading Map
SHO | Insight Camera data. Slope Heading with Overlay
SLO | Insight Camera data. Slope with Overlay
SLP | Insight Camera data. Slope
SMG | Insight Camera data. Slope Magnitude
SMO | Insight Camera data. Slope Magnitude with Overlay
SNO | Insight Camera data. Slope Northerly Tilt with Overlay
SNT | Insight Camera data. Slope Northerly Tilt
STATIL-calibrated | HP3/RAD calibrated static tilt data
STATIL-raw | HP3/RAD raw static tilt data
StationXML | Insight SEIS product containing seismic metadata in StationXML format.
TAU | Insight Camera data. Tau report
TDS | Insight Camera data. Delta Tilt map for SEIS/WTS
TEM-A-calibrated | HP3/RAD calibrated active temperature data
TEM-P-calibrated | HP3/RAD calibrated passive temperature data
TEM-raw | HP3/RAD raw temperature data
TFH | Insight Camera data. Tilt map for HP3
TFS | Insight Camera data. Tilt map for SEIS
TFW | Insight Camera data. Tilt map for WTS
TLM-raw | HP3/RAD raw tether length monitor data
TNF | DSN TRK 2-34 tracking and navigation data
TRO | DSN TRK 2-23 troposphere calibration data
UIH | Insight Camera data. Instrument Normal for HP3.
UIS | Insight Camera data. Instrument Normal for SEIS.
UIW | Insight Camera data. Instrument Normal for WTS.
UUF | Insight Camera data. Surface Normal (UVW) U-band Filled
UUU | Insight Camera data. Surface Normal (UVW) U-band
UVF | Insight Camera data. Surface Normal (UVW) Filled
UVO | Insight Camera data. Surface Normal (UVW) with Overlay
UVP | Insight Camera data. Surface Normal (UVW) Projected onto Plane
UVS | Insight Camera data. Surface Normal (UVW) for Slope computations
UVT | Insight Camera data. Surface Normal (UVW) Angle ('T' for theta) between Normal and Plane
UVW | Insight Camera data. Surface Normal (UVW)
VVF | Insight Camera data. Surface Normal (UVW) V-band Filled
VVV | Insight Camera data. Surface Normal (UVW) V-band
WEA | DSN TRK 2-24 weather data
WSH | Insight Camera data. Workspace boundary for HP3
WSS | Insight Camera data. Workspace boundary for SEIS and WTS
WWF | Insight Camera data. Surface Normal (UVW) W-band Filled
WWW | Insight Camera data. Surface Normal (UVW) W-band
XXF | Insight Camera data. XYZ X-band Filled
XXX | Insight Camera data. XYZ X-band
XYE | Insight Camera data. XYZ Error Metric
XYF | Insight Camera data. XYZ Filled
XYM | Insight Camera data. XYZ Masked
XYO | Insight Camera data. XYZ with Overlay
XYR | Insight Camera data. XYZ expressed in Rover Nav frame
XYZ | Insight Camera data. XYZ expressed in Site frame
YYF | Insight Camera data. XYZ Y-band Filled
YYY | Insight Camera data. XYZ Y-band
ZIH | Insight Camera data. Instrument Z for HP3.
ZIS | Insight Camera data. Instrument Z for SEIS.
ZIW | Insight Camera data. Instrument Z for WTS.
ZZF | Insight Camera data. XYZ Z-band Filled
ZZZ | Insight Camera data. XYZ Z-band


### release_number
Release_number is the number of a scheduled release of InSight data from PDS. The
      first Insight data release is Release 1. The release_number for a given product is always the
      first release in which it appears, and does not change if the product is revised
      later.

Type: ASCII_Integer  
Units: undefined  
Minimum Value: 1  



### software_name
Software_name identifies the processing software used to generate a data
      product.

Type: ASCII_Short_String_Preserved  
Units: undefined  



### software_version_id
Software_version_id identifies the version of the processing software used to
      generate a data product.

Type: ASCII_Short_String_Preserved  
Units: undefined  



### sol_number
Sol_number is the number of the Mars day on which an observation was acquired.
      Landing day is Sol 0.

Type: ASCII_Integer  
Units: undefined  



### spacecraft_clock_count_partition
The spacecraft_clock_count_partition provides the clock partition active for the
      spacecraft_clock_start_count and spacecraft_clock_stop_count attributes.
      This attribute may be used when the spacecraft_clock values do not include a partition number.

Type: ASCII_Integer  
Units: undefined  
Minimum Value: 1  



### spacecraft_clock_start_count
The spacecraft_clock_start_count is the value of the spacecraft clock at the
      beginning of an observation. It represents the number of ticks. If a fractional value
      is present, it represents the number of 1/65536 ticks.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### spacecraft_clock_stop_count
The spacecraft_clock_stop_count is the value of the spacecraft clock at the end of
      an observation.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### start_local_mean_solar_time
Start_local_mean_solar_time is the local mean solar time, as defined in the main
      PDS4 data dictionary, at the beginning of an observation.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### start_local_true_solar_time
Start_local_true_solar_time is the local true solar time, as defined in the main
      PDS4 data dictionary, at the beginning of an observation.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### start_sol_number
Start_sol_number is the number of the Mars day on which a multiple-day observation
      was begun. Landing day is Sol 0.

Type: ASCII_Integer  
Units: undefined  



### start_solar_longitude
Start_solar_longitude is the solar longitude, as defined in the main PDS4 data
      dictionary, at the beginning of an observation.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### stop_local_mean_solar_time
Stop_local_mean_solar_time is the local mean solar time, as defined in the main PDS4
      data dictionary, at the end of an observation.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### stop_local_true_solar_time
Stop_local_true_solar_time is the local true solar time, as defined in the main PDS4
      data dictionary, at the end of an observation.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### stop_sol_number
Stop_sol_number is the number of the Mars day on which a multiple-day observation
      was ended. Landing day is Sol 0.

Type: ASCII_Integer  
Units: undefined  



### stop_solar_longitude
Stop_solar_longitude is the solar longitude, as defined in the main PDS4 data
      dictionary, at the end of an observation.

Type: ASCII_Real  
Units: Units_of_Angle  
Maximum Value: 360  



### ascii_equivalent_file_name
SEIS data products are archived in their native SEED format and in a PDS-compatible ASCII format.
      The ascii_equivalent_file_name attribute gives the name of the file that is the ASCII equivalent of a SEED format file.

Type: ASCII_File_Name  
Units: undefined  



### channel_name
A SEIS data product contains data from a single location and single instrument
      channel. The channel_name uniquely identifies the location and channel pair using the 
      format NN.AAA, where NN is a two-digit location number and AAA is a three-character channel code
      (uppercase letters or digits). The complete list of channel names may be found in the Channel Naming document in the
      SEIS document collection.

Type: ASCII_Short_String_Collapsed  
Units: undefined  



### metadata_file_name
SEIS observations are stored with the seismic data from the instrument in one file (mini-SEED or GeoCSV format) 
      and the metadata for the measurements in another file (dataless SEED or StationXML format).
      The metadata_file_name attribute gives the name of the file containing the metadata associated with
      a given data file.

Type: ASCII_File_Name  
Units: undefined  



### sample_count
Sample_count is the number of samples in a SEIS mini-SEED or GeoCSV product.

Type: ASCII_Integer  
Units: undefined  



### sampling_rate
Sampling_rate represents the number of samples per second 
      (local on-board seconds). Because the instrument (EBox) clock drift is
      dependent on temperature, sampling_rate various over UTC time. However,
      this variation is small enough so as to be negligible and can be ignored
      for scientific analyses.

Type: ASCII_Real  
Units: Units_of_Frequency  



### seed_file_name
SEIS data products are archived in their native SEED format and in a PDS-compatible ASCII format.
      The seed_file_name attribute gives the name of the file that is the SEED equivalent of an ASCII data file.

Type: ASCII_File_Name  
Units: undefined  



### seis_data_type
SEIS mini-SEED products and their equivalent GeoCSV products contain only seismic data, 
      and therefore have the seis_data_type "waveform". SEIS dataless SEED products and their equivalent 
      StationXML products contain only metadata for the seismic data files, and therefore have the 
      seis_data_type "metadata".

Type: ASCII_Short_String_Collapsed  
Units: undefined  

**Permissible Values**

Name                                    | Description
--------------------------------------- | ----------------------------
metadata | The data product contains only metadata.
waveform | The data product contains only seismic data.

