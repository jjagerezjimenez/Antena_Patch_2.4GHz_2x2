<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile version="20210114" creator="FE Port mode solver">
  <MetaGeometryFile filename="" lod="1"/>
  <SimulationProperties fieldname="Port1 h1" frequency="0" encoded_unit="&amp;U:A^1.:m^-1" quantity="h-field" fieldtype="H-Field" fieldscaling="PEAK" dB_Amplitude="20"/>
  <ResultDataType vector="1" complex="1" timedomain="0" frequencymap="1"/>
  <SimulationDomain min="0 0 0" max="0 0 0"/>
  <PlotSettings Plot="1" ignore_symmetry="0" deformation="0" enforce_culling="0" integer_values="0" default_arrow_type="ARROWS" default_scaling="NONE">
    <Plane normal="1 0 -0" distance="100"/>
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
  <ResultGroups num_steps="6" transformation="1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1" process_mesh_group="0">
    <Frame index="0" characteristic="1000">
      <FieldResultFile filename="Port1_h1(#0000).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="1" characteristic="500">
      <FieldResultFile filename="Port1_h1(#0001).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="2" characteristic="750">
      <FieldResultFile filename="Port1_h1(#0002).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="3" characteristic="875">
      <FieldResultFile filename="Port1_h1(#0003).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="4" characteristic="628.5">
      <FieldResultFile filename="Port1_h1(#0004).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
    <Frame index="5" characteristic="961.5">
      <FieldResultFile filename="Port1_h1(#0005).sct" type="sct" meshname="Port1.slim"/>
    </Frame>
  </ResultGroups>
</MetaResultFile>
