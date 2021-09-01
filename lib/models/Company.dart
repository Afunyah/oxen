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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Company type in your schema. */
@immutable
class Company extends Model {
  static const classType = const _CompanyModelType();
  final String id;
  final String? _firstName;
  final String? _lastName;
  final String? _companyName;
  final String? _phoneNumber;
  final String? _email;
  final double? _rating;
  final int? _ratedBy;
  final List<String>? _riderIdArray;
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
  
  String get companyName {
    try {
      return _companyName!;
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
  
  String? get email {
    return _email;
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
  
  List<String>? get riderIdArray {
    return _riderIdArray;
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
  
  const Company._internal({required this.id, required firstName, required lastName, required companyName, required phoneNumber, email, required rating, required ratedBy, riderIdArray, required totalEarned, required totalCommission, required financialData, required finishedDeliveries, required totalConfirmation}): _firstName = firstName, _lastName = lastName, _companyName = companyName, _phoneNumber = phoneNumber, _email = email, _rating = rating, _ratedBy = ratedBy, _riderIdArray = riderIdArray, _totalEarned = totalEarned, _totalCommission = totalCommission, _financialData = financialData, _finishedDeliveries = finishedDeliveries, _totalConfirmation = totalConfirmation;
  
  factory Company({String? id, required String firstName, required String lastName, required String companyName, required String phoneNumber, String? email, required double rating, required int ratedBy, List<String>? riderIdArray, required double totalEarned, required double totalCommission, required String financialData, required int finishedDeliveries, required bool totalConfirmation}) {
    return Company._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      lastName: lastName,
      companyName: companyName,
      phoneNumber: phoneNumber,
      email: email,
      rating: rating,
      ratedBy: ratedBy,
      riderIdArray: riderIdArray != null ? List<String>.unmodifiable(riderIdArray) : riderIdArray,
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
    return other is Company &&
      id == other.id &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _companyName == other._companyName &&
      _phoneNumber == other._phoneNumber &&
      _email == other._email &&
      _rating == other._rating &&
      _ratedBy == other._ratedBy &&
      DeepCollectionEquality().equals(_riderIdArray, other._riderIdArray) &&
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
    
    buffer.write("Company {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("companyName=" + "$_companyName" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("ratedBy=" + (_ratedBy != null ? _ratedBy!.toString() : "null") + ", ");
    buffer.write("riderIdArray=" + (_riderIdArray != null ? _riderIdArray!.toString() : "null") + ", ");
    buffer.write("totalEarned=" + (_totalEarned != null ? _totalEarned!.toString() : "null") + ", ");
    buffer.write("totalCommission=" + (_totalCommission != null ? _totalCommission!.toString() : "null") + ", ");
    buffer.write("financialData=" + "$_financialData" + ", ");
    buffer.write("finishedDeliveries=" + (_finishedDeliveries != null ? _finishedDeliveries!.toString() : "null") + ", ");
    buffer.write("totalConfirmation=" + (_totalConfirmation != null ? _totalConfirmation!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Company copyWith({String? id, String? firstName, String? lastName, String? companyName, String? phoneNumber, String? email, double? rating, int? ratedBy, List<String>? riderIdArray, double? totalEarned, double? totalCommission, String? financialData, int? finishedDeliveries, bool? totalConfirmation}) {
    return Company(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      companyName: companyName ?? this.companyName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      rating: rating ?? this.rating,
      ratedBy: ratedBy ?? this.ratedBy,
      riderIdArray: riderIdArray ?? this.riderIdArray,
      totalEarned: totalEarned ?? this.totalEarned,
      totalCommission: totalCommission ?? this.totalCommission,
      financialData: financialData ?? this.financialData,
      finishedDeliveries: finishedDeliveries ?? this.finishedDeliveries,
      totalConfirmation: totalConfirmation ?? this.totalConfirmation);
  }
  
  Company.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _companyName = json['companyName'],
      _phoneNumber = json['phoneNumber'],
      _email = json['email'],
      _rating = json['rating'],
      _ratedBy = json['ratedBy'],
      _riderIdArray = json['riderIdArray']?.cast<String>(),
      _totalEarned = json['totalEarned'],
      _totalCommission = json['totalCommission'],
      _financialData = json['financialData'],
      _finishedDeliveries = json['finishedDeliveries'],
      _totalConfirmation = json['totalConfirmation'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'lastName': _lastName, 'companyName': _companyName, 'phoneNumber': _phoneNumber, 'email': _email, 'rating': _rating, 'ratedBy': _ratedBy, 'riderIdArray': _riderIdArray, 'totalEarned': _totalEarned, 'totalCommission': _totalCommission, 'financialData': _financialData, 'finishedDeliveries': _finishedDeliveries, 'totalConfirmation': _totalConfirmation
  };

  static final QueryField ID = QueryField(fieldName: "company.id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField COMPANYNAME = QueryField(fieldName: "companyName");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField RATING = QueryField(fieldName: "rating");
  static final QueryField RATEDBY = QueryField(fieldName: "ratedBy");
  static final QueryField RIDERIDARRAY = QueryField(fieldName: "riderIdArray");
  static final QueryField TOTALEARNED = QueryField(fieldName: "totalEarned");
  static final QueryField TOTALCOMMISSION = QueryField(fieldName: "totalCommission");
  static final QueryField FINANCIALDATA = QueryField(fieldName: "financialData");
  static final QueryField FINISHEDDELIVERIES = QueryField(fieldName: "finishedDeliveries");
  static final QueryField TOTALCONFIRMATION = QueryField(fieldName: "totalConfirmation");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Company";
    modelSchemaDefinition.pluralName = "Companies";
    
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
      key: Company.FIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.LASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.COMPANYNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.EMAIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.RATING,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.RATEDBY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.RIDERIDARRAY,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.TOTALEARNED,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.TOTALCOMMISSION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.FINANCIALDATA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.FINISHEDDELIVERIES,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Company.TOTALCONFIRMATION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _CompanyModelType extends ModelType<Company> {
  const _CompanyModelType();
  
  @override
  Company fromJson(Map<String, dynamic> jsonData) {
    return Company.fromJson(jsonData);
  }
}