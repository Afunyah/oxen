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


/** This is an auto generated class representing the Delivery type in your schema. */
@immutable
class Delivery extends Model {
  static const classType = const _DeliveryModelType();
  final String id;
  final String? _customerID;
  final String? _riderID;
  final String? _vehicleID;
  final String? _companyID;
  final String? _startPoint;
  final String? _endPoint;
  final TemporalDateTime? _pickUpTime;
  final TemporalDateTime? _startTime;
  final TemporalDateTime? _endTime;
  final double? _cost;
  final String? _status;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get customerID {
    try {
      return _customerID!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get riderID {
    try {
      return _riderID!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get vehicleID {
    try {
      return _vehicleID!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String? get companyID {
    return _companyID;
  }
  
  String get startPoint {
    try {
      return _startPoint!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get endPoint {
    try {
      return _endPoint!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  TemporalDateTime get pickUpTime {
    try {
      return _pickUpTime!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  TemporalDateTime get startTime {
    try {
      return _startTime!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  TemporalDateTime get endTime {
    try {
      return _endTime!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  double get cost {
    try {
      return _cost!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get status {
    try {
      return _status!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  const Delivery._internal({required this.id, required customerID, required riderID, required vehicleID, companyID, required startPoint, required endPoint, required pickUpTime, required startTime, required endTime, required cost, required status}): _customerID = customerID, _riderID = riderID, _vehicleID = vehicleID, _companyID = companyID, _startPoint = startPoint, _endPoint = endPoint, _pickUpTime = pickUpTime, _startTime = startTime, _endTime = endTime, _cost = cost, _status = status;
  
  factory Delivery({String? id, required String customerID, required String riderID, required String vehicleID, String? companyID, required String startPoint, required String endPoint, required TemporalDateTime pickUpTime, required TemporalDateTime startTime, required TemporalDateTime endTime, required double cost, required String status}) {
    return Delivery._internal(
      id: id == null ? UUID.getUUID() : id,
      customerID: customerID,
      riderID: riderID,
      vehicleID: vehicleID,
      companyID: companyID,
      startPoint: startPoint,
      endPoint: endPoint,
      pickUpTime: pickUpTime,
      startTime: startTime,
      endTime: endTime,
      cost: cost,
      status: status);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Delivery &&
      id == other.id &&
      _customerID == other._customerID &&
      _riderID == other._riderID &&
      _vehicleID == other._vehicleID &&
      _companyID == other._companyID &&
      _startPoint == other._startPoint &&
      _endPoint == other._endPoint &&
      _pickUpTime == other._pickUpTime &&
      _startTime == other._startTime &&
      _endTime == other._endTime &&
      _cost == other._cost &&
      _status == other._status;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Delivery {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("customerID=" + "$_customerID" + ", ");
    buffer.write("riderID=" + "$_riderID" + ", ");
    buffer.write("vehicleID=" + "$_vehicleID" + ", ");
    buffer.write("companyID=" + "$_companyID" + ", ");
    buffer.write("startPoint=" + "$_startPoint" + ", ");
    buffer.write("endPoint=" + "$_endPoint" + ", ");
    buffer.write("pickUpTime=" + (_pickUpTime != null ? _pickUpTime!.format() : "null") + ", ");
    buffer.write("startTime=" + (_startTime != null ? _startTime!.format() : "null") + ", ");
    buffer.write("endTime=" + (_endTime != null ? _endTime!.format() : "null") + ", ");
    buffer.write("cost=" + (_cost != null ? _cost!.toString() : "null") + ", ");
    buffer.write("status=" + "$_status");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Delivery copyWith({String? id, String? customerID, String? riderID, String? vehicleID, String? companyID, String? startPoint, String? endPoint, TemporalDateTime? pickUpTime, TemporalDateTime? startTime, TemporalDateTime? endTime, double? cost, String? status}) {
    return Delivery(
      id: id ?? this.id,
      customerID: customerID ?? this.customerID,
      riderID: riderID ?? this.riderID,
      vehicleID: vehicleID ?? this.vehicleID,
      companyID: companyID ?? this.companyID,
      startPoint: startPoint ?? this.startPoint,
      endPoint: endPoint ?? this.endPoint,
      pickUpTime: pickUpTime ?? this.pickUpTime,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      cost: cost ?? this.cost,
      status: status ?? this.status);
  }
  
  Delivery.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _customerID = json['customerID'],
      _riderID = json['riderID'],
      _vehicleID = json['vehicleID'],
      _companyID = json['companyID'],
      _startPoint = json['startPoint'],
      _endPoint = json['endPoint'],
      _pickUpTime = json['pickUpTime'] != null ? TemporalDateTime.fromString(json['pickUpTime']) : null,
      _startTime = json['startTime'] != null ? TemporalDateTime.fromString(json['startTime']) : null,
      _endTime = json['endTime'] != null ? TemporalDateTime.fromString(json['endTime']) : null,
      _cost = (json['cost'] as num?)?.toDouble(),
      _status = json['status'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'customerID': _customerID, 'riderID': _riderID, 'vehicleID': _vehicleID, 'companyID': _companyID, 'startPoint': _startPoint, 'endPoint': _endPoint, 'pickUpTime': _pickUpTime?.format(), 'startTime': _startTime?.format(), 'endTime': _endTime?.format(), 'cost': _cost, 'status': _status
  };

  static final QueryField ID = QueryField(fieldName: "delivery.id");
  static final QueryField CUSTOMERID = QueryField(fieldName: "customerID");
  static final QueryField RIDERID = QueryField(fieldName: "riderID");
  static final QueryField VEHICLEID = QueryField(fieldName: "vehicleID");
  static final QueryField COMPANYID = QueryField(fieldName: "companyID");
  static final QueryField STARTPOINT = QueryField(fieldName: "startPoint");
  static final QueryField ENDPOINT = QueryField(fieldName: "endPoint");
  static final QueryField PICKUPTIME = QueryField(fieldName: "pickUpTime");
  static final QueryField STARTTIME = QueryField(fieldName: "startTime");
  static final QueryField ENDTIME = QueryField(fieldName: "endTime");
  static final QueryField COST = QueryField(fieldName: "cost");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Delivery";
    modelSchemaDefinition.pluralName = "Deliveries";
    
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
      key: Delivery.CUSTOMERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.RIDERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.VEHICLEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.COMPANYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.STARTPOINT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.ENDPOINT,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.PICKUPTIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.STARTTIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.ENDTIME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.COST,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Delivery.STATUS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _DeliveryModelType extends ModelType<Delivery> {
  const _DeliveryModelType();
  
  @override
  Delivery fromJson(Map<String, dynamic> jsonData) {
    return Delivery.fromJson(jsonData);
  }
}