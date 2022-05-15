/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Vehicle type in your schema. */
@immutable
class Vehicle extends Model {
  static const classType = const _VehicleModelType();
  final String id;
  final String? _riderId;
  final String? _desc;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get riderId {
    try {
      return _riderId!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get desc {
    try {
      return _desc!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  const Vehicle._internal({required this.id, required riderId, required desc}): _riderId = riderId, _desc = desc;
  
  factory Vehicle({String? id, required String riderId, required String desc}) {
    return Vehicle._internal(
      id: id == null ? UUID.getUUID() : id,
      riderId: riderId,
      desc: desc);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vehicle &&
      id == other.id &&
      _riderId == other._riderId &&
      _desc == other._desc;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Vehicle {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("riderId=" + "$_riderId" + ", ");
    buffer.write("desc=" + "$_desc");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Vehicle copyWith({String? id, String? riderId, String? desc}) {
    return Vehicle(
      id: id ?? this.id,
      riderId: riderId ?? this.riderId,
      desc: desc ?? this.desc);
  }
  
  Vehicle.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _riderId = json['riderId'],
      _desc = json['desc'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'riderId': _riderId, 'desc': _desc
  };

  static final QueryField ID = QueryField(fieldName: "vehicle.id");
  static final QueryField RIDERID = QueryField(fieldName: "riderId");
  static final QueryField DESC = QueryField(fieldName: "desc");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Vehicle";
    modelSchemaDefinition.pluralName = "Vehicles";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vehicle.RIDERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vehicle.DESC,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _VehicleModelType extends ModelType<Vehicle> {
  const _VehicleModelType();
  
  @override
  Vehicle fromJson(Map<String, dynamic> jsonData) {
    return Vehicle.fromJson(jsonData);
  }
}