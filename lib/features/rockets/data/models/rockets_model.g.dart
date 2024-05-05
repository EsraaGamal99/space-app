// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rockets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RocketsModel _$RocketsModelFromJson(Map<String, dynamic> json) => RocketsModel(
      height: json['height'] == null
          ? null
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: json['first_stage'] == null
          ? null
          : FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
      secondStage: json['second_stage'] == null
          ? null
          : SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landing_legs'] == null
          ? null
          : LandingLegs.fromJson(json['landing_legs'] as Map<String, dynamic>),
      payloadWeights: (json['payload_weights'] as List<dynamic>?)
          ?.map((e) => PayloadWeights.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickrImages: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: (json['stages'] as num?)?.toInt(),
      boosters: (json['boosters'] as num?)?.toInt(),
      costPerLaunch: (json['costPerLaunch'] as num?)?.toInt(),
      successRatePct: (json['successRatePct'] as num?)?.toInt(),
      firstFlight: json['firstFlight'] as String?,
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$RocketsModelToJson(RocketsModel instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'first_stage': instance.firstStage,
      'second_stage': instance.secondStage,
      'engines': instance.engines,
      'landing_legs': instance.landingLegs,
      'payload_weights': instance.payloadWeights,
      'flickr_images': instance.flickrImages,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'costPerLaunch': instance.costPerLaunch,
      'successRatePct': instance.successRatePct,
      'firstFlight': instance.firstFlight,
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };

PayloadWeights _$PayloadWeightsFromJson(Map<String, dynamic> json) =>
    PayloadWeights(
      id: json['id'] as String?,
      name: json['name'] as String?,
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PayloadWeightsToJson(PayloadWeights instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kg': instance.kg,
      'lb': instance.lb,
    };

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) => LandingLegs(
      number: (json['number'] as num?)?.toInt(),
      material: json['material'],
    );

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) =>
    <String, dynamic>{
      'number': instance.number,
      'material': instance.material,
    };

Engines _$EnginesFromJson(Map<String, dynamic> json) => Engines(
      isp: json['isp'] == null
          ? null
          : Isp.fromJson(json['isp'] as Map<String, dynamic>),
      thrustSeaLevel: json['thrustSeaLevel'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrustSeaLevel'] as Map<String, dynamic>),
      thrustVacuum: json['thrustVacuum'] == null
          ? null
          : ThrustVacuum.fromJson(json['thrustVacuum'] as Map<String, dynamic>),
      number: (json['number'] as num?)?.toInt(),
      type: json['type'] as String?,
      version: json['version'] as String?,
      layout: json['layout'] as String?,
      engineLossMax: (json['engineLossMax'] as num?)?.toInt(),
      propellant1: json['propellant1'] as String?,
      propellant2: json['propellant2'] as String?,
      thrustToWeight: (json['thrustToWeight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EnginesToJson(Engines instance) => <String, dynamic>{
      'isp': instance.isp,
      'thrustSeaLevel': instance.thrustSeaLevel,
      'thrustVacuum': instance.thrustVacuum,
      'number': instance.number,
      'type': instance.type,
      'version': instance.version,
      'layout': instance.layout,
      'engineLossMax': instance.engineLossMax,
      'propellant1': instance.propellant1,
      'propellant2': instance.propellant2,
      'thrustToWeight': instance.thrustToWeight,
    };

ThrustVacuum _$ThrustVacuumFromJson(Map<String, dynamic> json) => ThrustVacuum(
      kN: (json['kN'] as num?)?.toInt(),
      lbf: (json['lbf'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ThrustVacuumToJson(ThrustVacuum instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

ThrustSeaLevel _$ThrustSeaLevelFromJson(Map<String, dynamic> json) =>
    ThrustSeaLevel(
      kN: (json['kN'] as num?)?.toInt(),
      lbf: (json['lbf'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ThrustSeaLevelToJson(ThrustSeaLevel instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

Isp _$IspFromJson(Map<String, dynamic> json) => Isp(
      seaLevel: (json['seaLevel'] as num?)?.toInt(),
      vacuum: (json['vacuum'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IspToJson(Isp instance) => <String, dynamic>{
      'seaLevel': instance.seaLevel,
      'vacuum': instance.vacuum,
    };

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) => SecondStage(
      thrust: json['thrust'] == null
          ? null
          : Thrust.fromJson(json['thrust'] as Map<String, dynamic>),
      payloads: json['payloads'] == null
          ? null
          : Payloads.fromJson(json['payloads'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuelAmountTons'] as num?)?.toDouble(),
      burnTimeSec: (json['burnTimeSec'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) =>
    <String, dynamic>{
      'thrust': instance.thrust,
      'payloads': instance.payloads,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuelAmountTons': instance.fuelAmountTons,
      'burnTimeSec': instance.burnTimeSec,
    };

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      compositeFairing: json['compositeFairing'] == null
          ? null
          : CompositeFairing.fromJson(
              json['compositeFairing'] as Map<String, dynamic>),
      option1: json['option1'] as String?,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'compositeFairing': instance.compositeFairing,
      'option1': instance.option1,
    };

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) =>
    CompositeFairing(
      height: json['height'] == null
          ? null
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
    };

Diameter _$DiameterFromJson(Map<String, dynamic> json) => Diameter(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiameterToJson(Diameter instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Height _$HeightFromJson(Map<String, dynamic> json) => Height(
      meters: (json['meters'] as num?)?.toDouble(),
      feet: (json['feet'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$HeightToJson(Height instance) => <String, dynamic>{
      'meters': instance.meters,
      'feet': instance.feet,
    };

Thrust _$ThrustFromJson(Map<String, dynamic> json) => Thrust(
      kN: (json['kN'] as num?)?.toInt(),
      lbf: (json['lbf'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ThrustToJson(Thrust instance) => <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };

FirstStage _$FirstStageFromJson(Map<String, dynamic> json) => FirstStage(
      thrustSeaLevel: json['thrustSeaLevel'] == null
          ? null
          : ThrustSeaLevel.fromJson(
              json['thrustSeaLevel'] as Map<String, dynamic>),
      thrustVacuum: json['thrustVacuum'] == null
          ? null
          : ThrustVacuum.fromJson(json['thrustVacuum'] as Map<String, dynamic>),
      reusable: json['reusable'] as bool?,
      engines: (json['engines'] as num?)?.toInt(),
      fuelAmountTons: (json['fuelAmountTons'] as num?)?.toDouble(),
      burnTimeSec: (json['burnTimeSec'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FirstStageToJson(FirstStage instance) =>
    <String, dynamic>{
      'thrustSeaLevel': instance.thrustSeaLevel,
      'thrustVacuum': instance.thrustVacuum,
      'reusable': instance.reusable,
      'engines': instance.engines,
      'fuelAmountTons': instance.fuelAmountTons,
      'burnTimeSec': instance.burnTimeSec,
    };

Mass _$MassFromJson(Map<String, dynamic> json) => Mass(
      kg: (json['kg'] as num?)?.toInt(),
      lb: (json['lb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MassToJson(Mass instance) => <String, dynamic>{
      'kg': instance.kg,
      'lb': instance.lb,
    };