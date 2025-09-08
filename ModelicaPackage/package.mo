package BatteryLibrary
  model LFPBattery
    Modelica.Electrical.Batteries.BatteryStacks.CellRCStack battery(cellData=cellData, SOC(start=1, fixed=true), Ns=10, Np=2) annotation (Documentation(info="Model Base in the ElectricVehicles library."), Placement(visible=true, transformation(origin={10,10}, extent={{-10,-10},{10,10}}, rotation=90)));
    Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation (Placement(visible=true, transformation(origin={-70,10}, extent={{-10,-10},{10,10}}, rotation=-270)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(visible=true, transformation(origin={50,10},extent={{10,10},{-10,-10}}, rotation=-90)));
    Modelica.Blocks.Interfaces.RealInput i(unit="A") annotation (Placement(transformation(origin={-120,10}, extent={{-20,-20},{20,20}}), iconTransformation(origin={-120,0}, extent={{-20,-20},{20,20}})));
    parameter Modelica.Electrical.Batteries.ParameterRecords.TransientData.CellData cellData(Qnom=338400, Ri=0.0035, OCVmax=3.39, OCVmin=2.7, nRC=2, useLinearSOCDependency=false, rcData={Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.0015, C=2000),Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.001, C=200)}, OCV_SOC={{0.,0.852507},{0.1,0.938053},{0.2,0.958702},{0.3,0.961652},{0.4,0.964602},{0.5,0.970501},{0.6,0.976401},{0.7,0.979351},{0.8,0.976401},{0.9,0.982301},{1.,1.}}, SOCmax=1, SOCmin=0, smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments, T_ref=298.15) "Battery cell characteristics" annotation (Placement(visible=true, transformation(extent={{-40,0},{-20,20}}, rotation=0)));
    Modelica.Blocks.Interfaces.RealOutput v(unit="V") annotation (Placement(visible=true, transformation(origin={110,10},extent={{10,-10},{-10,10}}, rotation=180), iconTransformation(origin={110,0}, extent={{-10,-10},{10,10}}, rotation=0)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(visible=true, transformation(origin={-70,-30},extent={{-10,-10},{10,10}}, rotation=0)));
  equation
    connect(i, signalCurrent.i) annotation (Line(points={{-120,10},{-84.8519,10},{-84.8519,10},{-82,10}}, color={0,0,127}));
    connect(signalCurrent.n, battery.n) annotation (Line(points={{-70,20},{-70,40},{10,40},{10,20}}, color={0,0,255}));
    connect(voltageSensor.n, battery.n) annotation (Line(points={{50,20},{50,40},{10,40},{10,20}}, color={0,0,255}));
    connect(voltageSensor.p, battery.p) annotation (Line(points={{50,0},{50,-20},{10,-20},{10,0}}, color={0,0,255}));
    connect(voltageSensor.v, v)
      annotation (Line(points={{61,10},{110,10}}, color={0,0,127}));
    connect(signalCurrent.p, ground.p)
      annotation (Line(points={{-70,0},{-70,-20}}, color={0,0,255}));
    connect(battery.p, ground.p)
      annotation (Line(points={{10,0},{10,-20},{-70,-20}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-78,50},{82,-50}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-58,70},{-38,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{42,70},{62,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,160}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.None, lineThickness=0, borderPattern=BorderPattern.None, radius=0)}));
  end LFPBattery;

  model NMCBattery
    Modelica.Electrical.Batteries.BatteryStacks.CellRCStack battery(cellData=cellData, SOC(start=1, fixed=true), Ns=1, Np=1) annotation (Documentation(info="Model Base in the ElectricVehicles library."), Placement(visible=true, transformation(origin={10,10}, extent={{-10,-10},{10,10}}, rotation=90)));
    Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation (Placement(visible=true, transformation(origin={-70,10}, extent={{-10,-10},{10,10}}, rotation=-270)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(visible=true, transformation(origin={50,10},extent={{10,10},{-10,-10}}, rotation=-90)));
    Modelica.Blocks.Interfaces.RealInput i(unit="A") annotation (Placement(transformation(origin={-120,10}, extent={{-20,-20},{20,20}}), iconTransformation(origin={-120,0}, extent={{-20,-20},{20,20}})));
    parameter Modelica.Electrical.Batteries.ParameterRecords.TransientData.CellData cellData(Qnom=338400, Ri=0.0035, OCVmax=4.13, OCVmin=2.7, nRC=2, useLinearSOCDependency=false, rcData={Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.0015, C=2000),Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.001, C=200)}, OCV_SOC=[0, 0.808717; 0.1, 0.854722; 0.2, 0.869249; 0.3, 0.878935; 0.4, 0.886199; 0.5, 0.895884; 0.6, 0.90799; 0.7, 0.927361; 0.8, 0.949153; 0.9, 0.975787; 1, 1], SOCmax=1, SOCmin=0, smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments, T_ref=298.15) "Battery cell characteristics" annotation (Placement(visible=true, transformation(extent={{-40,0},{-20,20}}, rotation=0)));
    Modelica.Blocks.Interfaces.RealOutput v(unit="V") annotation (Placement(visible=true, transformation(origin={110,10},extent={{10,-10},{-10,10}}, rotation=180), iconTransformation(origin={110,0}, extent={{-10,-10},{10,10}}, rotation=0)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(visible=true, transformation(origin={-70,-30},extent={{-10,-10},{10,10}}, rotation=0)));
  equation
    connect(i, signalCurrent.i) annotation (Line(points={{-120,10},{-84.8519,10},{-84.8519,10},{-82,10}}, color={0,0,127}));
    connect(signalCurrent.n, battery.n) annotation (Line(points={{-70,20},{-70,40},{10,40},{10,20}}, color={0,0,255}));
    connect(voltageSensor.n, battery.n) annotation (Line(points={{50,20},{50,40},{10,40},{10,20}}, color={0,0,255}));
    connect(voltageSensor.p, battery.p) annotation (Line(points={{50,0},{50,-20},{10,-20},{10,0}}, color={0,0,255}));
    connect(voltageSensor.v, v)
      annotation (Line(points={{61,10},{110,10}}, color={0,0,127}));
    connect(signalCurrent.p, ground.p)
      annotation (Line(points={{-70,0},{-70,-20}}, color={0,0,255}));
    connect(battery.p, ground.p)
      annotation (Line(points={{10,0},{10,-20},{-70,-20}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-78,50},{82,-50}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-58,70},{-38,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{42,70},{62,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,160}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.None, lineThickness=0, borderPattern=BorderPattern.None, radius=0)}));
  end NMCBattery;
  Modelica.Electrical.Batteries.BatteryStacks.CellRCStack battery(cellData=cellData, SOC(start=1, fixed=true), Ns=1, Np=1) annotation (Documentation(info="Model Base in the ElectricVehicles library."), Placement(visible=true, transformation(origin={393.209,-156.789}, extent={{-10,-10},{10,10}}, rotation=90)));
  Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation (Placement(visible=true, transformation(origin={313.209,-156.789}, extent={{-10,-10},{10,10}}, rotation=-270)));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(visible=true, transformation(origin={433.209,-156.789}, extent={{10,10},{-10,-10}}, rotation=-90)));
  parameter Modelica.Electrical.Batteries.ParameterRecords.TransientData.CellData cellData(Qnom=338400, Ri=0.0035, OCVmax=3.39, OCVmin=2.7, nRC=2, useLinearSOCDependency=false, rcData={Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.0015, C=2000),Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.001, C=200)}, OCV_SOC={{0.,0.852507},{0.1,0.938053},{0.2,0.958702},{0.3,0.961652},{0.4,0.964602},{0.5,0.970501},{0.6,0.976401},{0.7,0.979351},{0.8,0.976401},{0.9,0.982301},{1.,1.}}, SOCmax=1, SOCmin=0, smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments, T_ref=298.15) "Battery cell characteristics" annotation (Placement(visible=true, transformation(extent={{343.209,-166.789},{363.209,-146.789}}, rotation=0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(visible=true, transformation(origin={313.209,-196.789}, extent={{-10,-10},{10,10}}, rotation=0)));
equation
  connect(signalCurrent.n, battery.n) annotation (Line(points={{313.209,-146.789},{313.209,-126.789},{393.209,-126.789},{393.209,-146.789}}, color={0,0,255}));
  connect(voltageSensor.n, battery.n) annotation (Line(points={{433.209,-146.789},{433.209,-126.789},{393.209,-126.789},{393.209,-146.789}}, color={0,0,255}));
  connect(voltageSensor.p, battery.p) annotation (Line(points={{433.209,-166.789},{433.209,-186.789},{393.209,-186.789},{393.209,-166.789}}, color={0,0,255}));
  connect(signalCurrent.p, ground.p) annotation (Line(points={{313.209,-166.789},{313.209,-186.789}}, color={0,0,255}));
  connect(battery.p, ground.p) annotation (Line(points={{393.209,-166.789},{393.209,-186.789},{313.209,-186.789}}, color={0,0,255}));
public
  model TemplateBattery
    Modelica.Electrical.Batteries.BatteryStacks.CellRCStack battery(cellData=cellData, SOC(start=1, fixed=true), Ns=1, Np=1) annotation (Documentation(info="Model Base in the ElectricVehicles library."), Placement(visible=true, transformation(origin={21,10}, extent={{-10,-10},{10,10}}, rotation=90)));
    Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent annotation (Placement(visible=true, transformation(origin={-59,10}, extent={{-10,-10},{10,10}}, rotation=-270)));
    Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation (Placement(visible=true, transformation(origin={61,10},extent={{10,10},{-10,-10}}, rotation=-90)));
    Modelica.Blocks.Interfaces.RealInput i(unit="A") annotation (Placement(transformation(origin={-120,10}, extent={{-20,-20},{20,20}}), iconTransformation(origin={-120,0}, extent={{-20,-20},{20,20}})));
    parameter Modelica.Electrical.Batteries.ParameterRecords.TransientData.CellData cellData(OCVmin=2.7, nRC=2, useLinearSOCDependency=false, rcData={Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.0015, C=2000),Modelica.Electrical.Batteries.ParameterRecords.TransientData.RCData(R=0.001, C=200)}, smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments) "Battery cell characteristics" annotation (Placement(visible=true, transformation(extent={{-29,0},{-9,20}}, rotation=0)));
    Modelica.Blocks.Interfaces.RealOutput v(unit="V") annotation (Placement(visible=true, transformation(origin={110,10},extent={{10,-10},{-10,10}}, rotation=180), iconTransformation(origin={110,0}, extent={{-10,-10},{10,10}}, rotation=0)));
    Modelica.Electrical.Analog.Basic.Ground ground annotation (Placement(visible=true, transformation(origin={-59,-30},extent={{-10,-10},{10,10}}, rotation=0)));
  equation
    connect(i, signalCurrent.i) annotation (Line(points={{-120,10},{-84.8519,10},{-84.8519,10},{-71,10}}, color={0,0,127}));
    connect(signalCurrent.n, battery.n) annotation (Line(points={{-59,20},{-59,40},{21,40},{21,20}}, color={0,0,255}));
    connect(voltageSensor.n, battery.n) annotation (Line(points={{61,20},{61,40},{21,40},{21,20}}, color={0,0,255}));
    connect(voltageSensor.p, battery.p) annotation (Line(points={{61,0},{61,-20},{21,-20},{21,0}}, color={0,0,255}));
    connect(voltageSensor.v, v) annotation (Line(points={{72,10},{85.5,10},{85.5,10},{110,10}}, color={0,0,127}));
    connect(signalCurrent.p, ground.p)
      annotation (Line(points={{-59,0},{-59,-20}}, color={0,0,255}));
    connect(battery.p, ground.p)
      annotation (Line(points={{21,0},{21,-20},{-59,-20}}, color={0,0,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-78,50},{82,-50}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-58,70},{-38,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{42,70},{62,52}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,160}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.None, lineThickness=0, borderPattern=BorderPattern.None, radius=0)}));
  end TemplateBattery;
  annotation (version="1.0.0", uses(Modelica(version="4.0.0")), Icon(graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,160}, fillColor={0,0,160}, pattern=LinePattern.Solid, fillPattern=FillPattern.Sphere, lineThickness=0, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-72,69},{66,-69}}, lineColor={0,0,160}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Sphere, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  model Testing
    LFPBattery lFPBattery
      annotation (Placement(transformation(extent={{-9,4},{11,23.9999}})));
    Modelica.Blocks.Interaction.Show.RealValue realValue
      annotation (Placement(transformation(extent={{31,4},{51,23.9999}})));
    Modelica.Blocks.Sources.Constant current(k=20) annotation (Placement(transformation(origin={-46,14}, extent={{-10,-10},{10,10}})));
  equation
    connect(current.y, lFPBattery.i) annotation (Line(points={{-35,14},{-35,14},{-11,14},{-11,14}}, color={0,0,127}));
    connect(realValue.numberPort, lFPBattery.v) annotation (Line(points={{29.5,14},{11,14},{11,14},{12,14}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Ellipse(extent={{-80,80},{80,-80}}, lineColor={0,0,160}, fillColor={0,0,160}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Polygon(points={{-18,30},{-18,-30},{42,-1.2},{-18,30}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid)}));
  end Testing;
end BatteryLibrary;
