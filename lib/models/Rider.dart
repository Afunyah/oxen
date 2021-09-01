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

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Rider type in your schema. */
@immutable
class Rider extends Model {
  static const classType = const _RiderModelType();
  final String id;
  final String? _firstName;
  final String? _lastName;
  final String? _phoneNumber;
  final String? _licenseNumber;
  final String? _email;
  final String? _status;
  final double? _rating;
  final int? _ratedBy;
  final String? _vehicleId;
  final String? _companyId;
  final double? _totalEarned;
  final double? _totalCommission;
  final String? _financialData;
  final int? _finishedDeliveries;
  final bool? _totalConfirmation;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get firstName {
    try {
      return _firstName!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get lastName {
    try {
      return _lastName!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get phoneNumber {
    try {
      return _phoneNumber!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get licenseNumber {
    try {
      return _licenseNumber!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get email {
    return _email;
  }
  
  String get status {
    try {
      return _status!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  double get rating {
    try {
      return _rating!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get ratedBy {
    try {
      return _ratedBy!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get vehicleId {
    try {
      return _vehicleId!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get companyId {
    return _companyId;
  }
  
  double get totalEarned {
    try {
      return _totalEarned!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  double get totalCommission {
    try {
      return _totalCommission!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get financialData {
    try {
      return _financialData!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  int get finishedDeliveries {
    try {
      return _finishedDeliveries!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  bool get totalConfirmation {
    try {
      return _totalConfirmation!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Rider._internal({required this.id, required firstName, required lastName, required phoneNumber, required licenseNumber, email, required status, required rating, required ratedBy, required vehicleId, companyId, required totalEarned, required totalCommission, required financialData, required finishedDeliveries, required totalConfirmation}): _firstName = firstName, _lastName = lastName, _phoneNumber = phoneNumber, _licenseNumber = licenseNumber, _email = email, _status = status, _rating = rating, _ratedBy = ratedBy, _vehicleId = vehicleId, _companyId = companyId, _totalEarned = totalEarned, _totalCommission = totalCommission, _financialData = financialData, _finishedDeliveries = finishedDeliveries, _totalConfirmation = totalConfirmation;
  
  factory Rider({String? id, required String firstName, required String lastName, required String phoneNumber, required String licenseNumber, String? email, required String status, required double rating, required int ratedBy, required String vehicleId, String? companyId, required double totalEarned, required double totalCommission, required String financialData, required int finishedDeliveries, required bool totalConfirmation}) {
    return Rider._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      licenseNumber: licenseNumber,
      email: email,
      status: status,
      rating: rating,
      ratedBy: ratedBy,
      vehicleId: vehicleId,
      companyId: companyId,
      totalEarned: totalEarned,
      totalCommission: totalCommission,
      financialData: financialData,
      finishedDeliveries: finishedDeliveries,
      totalConfirmation: totalConfirmation);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rider &&
      id == other.id &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _phoneNumber == other._phoneNumber &&
      _licenseNumber == other._licenseNumber &&
      _email == other._email &&
      _status == other._status &&
      _rating == other._rating &&
      _ratedBy == other._ratedBy &&
      _vehicleId == other._vehicleId &&
      _companyId == other._companyId &&
      _totalEarned == other._totalEarned &&
      _totalCommission == other._totalCommission &&
      _financialData == other._financialData &&
      _finishedDeliveries == other._finishedDeliveries &&
      _totalConfirmation == other._totalConfirmation;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Rider {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("licenseNumber=" + "$_licenseNumber" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("ratedBy=" + (_ratedBy != null ? _ratedBy!.toString() : "null") + ", ");
    buffer.write("vehicleId=" + "$_vehicleId" + ", ");
    buffer.write("companyId=" + "$_companyId" + ", ");
    buffer.write("totalEarned=" + (_totalEarned != null ? _totalEarned!.toString() : "null") + ", ");
    buffer.write("totalCommission=" + (_totalCommission != null ? _totalCommission!.toString() : "null") + ", ");
    buffer.write("financialData=" + "$_financialData" + ", ");
    buffer.write("finishedDeliveries=" + (_finishedDeliveries != null ? _finishedDeliveries!.toString() : "null") + ", ");
    buffer.write("totalConfirmation=" + (_totalConfirmation != null ? _totalConfirmation!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Rider copyWith({String? id, String? firstName, String? lastName, String? phoneNumber, String? licenseNumber, String? email, String? status, double? rating, int? ratedBy, String? vehicleId, String? companyId, double? totalEarned, double? totalCommission, String? financialData, int? finishedDeliveries, bool? totalConfirmation}) {
    return Rider(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      email: email ?? this.email,
      status: status ?? this.status,
      rating: rating ?? this.rating,
      ratedBy: ratedBy ?? this.ratedBy,
      vehicleId: vehicleId ?? this.vehicleId,
      companyId: companyId ?? this.companyId,
      totalEarned: totalEarned ?? this.totalEarned,
      totalCommission: totalCommission ?? this.totalCommission,
      financialData: financialData ?? this.financialData,
      finishedDeliveries: finishedDeliveries ?? this.finishedDeliveries,
      totalConfirmation: totalConfirmation ?? this.totalConfirmation);
  }
  
  Rider.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _phoneNumber = json['phoneNumber'],
      _licenseNumber = json['licenseNumber'],
      _email = json['email'],
      _status = json['status'],
      _rating = json['rating'],
      _ratedBy = json['ratedBy'],
      _vehicleId = json['vehicleId'],
      _companyId = json['companyId'],
      _totalEarned = json['totalEarned'],
      _totalCommission = json['totalCommission'],
      _financialData = json['financialData'],
      _finishedDeliveries = json['finishedDeliveries'],
      _totalConfirmation = json['totalConfirmation'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'lastName': _lastName, 'phoneNumber': _phoneNumber, 'licenseNumber': _licenseNumber, 'email': _email, 'status': _status, 'rating': _rating, 'ratedBy': _ratedBy, 'vehicleId': _vehicleId, 'companyId': _companyId, 'totalEarned': _totalEarned, 'totalCommission': _totalCommission, 'financialData': _financialData, 'finishedDeliveries': _finishedDeliveries, 'totalConfirmation': _totalConfirmation
  };

  static final QueryField ID = QueryField(fieldName: "rider.id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField LICENSENUMBER = QueryField(fieldName: "licenseNumber");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField RATEDBY = QueryField(fieldName: "ratedBy");
  static final QueryField VEHICLEID = QueryField(fieldName: "vehicleId");
  static final QueryField COMPANYID = QueryField(fieldName: "companyId");
  static final QueryField TOTALEARNED = QueryField(fieldName: "totalEarned");
  static final QueryField TOTALCOMMISSION = QueryField(fieldName: "totalCommission");
  static final QueryField FINANCIALDATA = QueryField(fieldName: "financialData");
  static final QueryField FINISHEDDELIVERIES = QueryField(fieldName: "finishedDeliveries");
  static final QueryField TOTALCONFIRMATION = QueryField(fieldName: "totalConfirmation");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Rider";
    modelSchemaDefinition.pluralName = "Riders";
    
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
      key: Rider.FIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.LASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.LICENSENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.STATUS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.RATING,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.RATEDBY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.VEHICLEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.COMPANYID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.TOTALEARNED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.TOTALCOMMISSION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.FINANCIALDATA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.FINISHEDDELIVERIES,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rider.TOTALCONFIRMATION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _RiderModelType extends ModelType<Rider> {
  const _RiderModelType();
  
  @override
  Rider fromJson(Map<String, dynamic> jsonData) {
    return Rider.fromJson(jsonData);
  }
}