<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile version="20210114" creator="FE Port mode solver">
  <MetaGeometryFile filename="" lod="1"/>
  <SimulationProperties fieldname="Port1 e1" frequency="0" encoded_unit="&amp;U:V^1.:m^-1" quantity="e-field" fieldtype="E-Field" fieldscaling="PEAK" dB_Amplitude="20"/>
  <ResultDataType vector="1" complex="1" timedomain="0" frequencymap="1"/>
  <SimulationDomain min="0 0 0" max="0 0 0"/>
  <PlotSettings Plot="1" ignore_symmetry="0" deformation="0" enforce_culling="0" integer_values="0" default_arrow_type="ARROWS" default_scaling="NONE">
    <Plane normal="0 1 0" distance="-30"/>
  </PlotSettings>
  <Source type="SOLVER"/>
  <SpecialMaterials>
    <Background type="NORMAL"/>
  </SpecialMaterials>
  <AuxGeometryFile/>
  <AuxResultFile/>
  <FieldFreeNodes/>
  <SurfaceFieldCoefficients/>
  <UnitCell/>
  <SubVolume/>
  <Units/>
  <ProjectUnits/>
  <TimeSampling/>
  <ResultGroups num_steps="8" transformation="1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1" process_mesh_group="0">
    <Frame index="0" characteristic="4">
      <FieldResultFile filename="Port1_e1(#0000).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="1" characteristic="2.5">
      <FieldResultFile filename="Port1_e1(#0001).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="2" characteristic="3.25">
      <FieldResultFile filename="Port1_e1(#0002).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="3" characteristic="1.75">
      <FieldResultFile filename="Port1_e1(#0003).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="4" characteristic="1">
      <FieldResultFile filename="Port1_e1(#0004).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="5" characteristic="3.5920000000000001">
      <FieldResultFile filename="Port1_e1(#0005).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="6" characteristic="1.3390000000000002">
      <FieldResultFile filename="Port1_e1(#0006).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="7" characteristic="2.0800000000000001">
      <FieldResultFile filename="Port1_e1(#0007).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
  </ResultGroups>
</MetaResultFile>
