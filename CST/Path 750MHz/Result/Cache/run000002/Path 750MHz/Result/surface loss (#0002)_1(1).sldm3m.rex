<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile version="20210114" creator="FD-Control">
  <MetaGeometryFile filename="model.gex" lod="1"/>
  <SimulationProperties fieldname="loss (f=750) [1]" frequency="750" encoded_unit="&amp;U:W^1.:m^-2" quantity="surf_loss_density" fieldtype="Surface power loss dens." fieldscaling="UNDEFINED" dB_Amplitude="10"/>
  <ResultDataType vector="0" complex="0" timedomain="0" frequencymap="0"/>
  <SimulationDomain min="-174.94812 -174.94812 -75.7481155" max="174.94812 174.94812 92.1169128"/>
  <PlotSettings Plot="2" ignore_symmetry="0" deformation="0" enforce_culling="0" integer_values="0" default_arrow_type="ARROWS" default_scaling="NONE"/>
  <Source type="SOLVER"/>
  <SpecialMaterials>
    <Background type="NORMAL"/>
    <Material name="Copper (pure)" type="FIELDFREE"/>
    <Material name="PEC" type="FIELDFREE"/>
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
  <ResultGroups num_steps="1" transformation="1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1" process_mesh_group="0">
    <Frame index="0">
      <FieldResultFile filename="surface loss (#0002)_1(1).sld" type="sct"/>
    </Frame>
  </ResultGroups>
</MetaResultFile>
