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


/** This is an auto generated class representing the Driver type in your schema. */
@immutable
class Driver extends Model {
  static const classType = const _DriverModelType();
  final String id;
  final String? _firstName;
  final String? _lastName;
  final String? _fullName;
  final String? _email;
  final String? _phoneNumber;
  final String? _address;
  final String? _birthdate;
  final String? _status;
  final String? _vehicleRegNumber;
  final String? _licenseNumber;
  final String? _vehicleID;

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
  
  String get fullName {
    try {
      return _fullName!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get email {
    try {
      return _email!;
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
  
  String get address {
    try {
      return _address!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get birthdate {
    try {
      return _birthdate!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get status {
    try {
      return _status!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String get vehicleRegNumber {
    try {
      return _vehicleRegNumber!;
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
  
  String get vehicleID {
    try {
      return _vehicleID!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const Driver._internal({required this.id, required firstName, required lastName, required fullName, required email, required phoneNumber, required address, required birthdate, required status, required vehicleRegNumber, required licenseNumber, required vehicleID}): _firstName = firstName, _lastName = lastName, _fullName = fullName, _email = email, _phoneNumber = phoneNumber, _address = address, _birthdate = birthdate, _status = status, _vehicleRegNumber = vehicleRegNumber, _licenseNumber = licenseNumber, _vehicleID = vehicleID;
  
  factory Driver({String? id, required String firstName, required String lastName, required String fullName, required String email, required String phoneNumber, required String address, required String birthdate, required String status, required String vehicleRegNumber, required String licenseNumber, required String vehicleID}) {
    return Driver._internal(
      id: id == null ? UUID.getUUID() : id,
      firstName: firstName,
      lastName: lastName,
      fullName: fullName,
      email: email,
      phoneNumber: phoneNumber,
      address: address,
      birthdate: birthdate,
      status: status,
      vehicleRegNumber: vehicleRegNumber,
      licenseNumber: licenseNumber,
      vehicleID: vehicleID);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Driver &&
      id == other.id &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _fullName == other._fullName &&
      _email == other._email &&
      _phoneNumber == other._phoneNumber &&
      _address == other._address &&
      _birthdate == other._birthdate &&
      _status == other._status &&
      _vehicleRegNumber == other._vehicleRegNumber &&
      _licenseNumber == other._licenseNumber &&
      _vehicleID == other._vehicleID;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Driver {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("fullName=" + "$_fullName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("address=" + "$_address" + ", ");
    buffer.write("birthdate=" + "$_birthdate" + ", ");
    buffer.write("status=" + "$_status" + ", ");
    buffer.write("vehicleRegNumber=" + "$_vehicleRegNumber" + ", ");
    buffer.write("licenseNumber=" + "$_licenseNumber" + ", ");
    buffer.write("vehicleID=" + "$_vehicleID");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Driver copyWith({String? id, String? firstName, String? lastName, String? fullName, String? email, String? phoneNumber, String? address, String? birthdate, String? status, String? vehicleRegNumber, String? licenseNumber, String? vehicleID}) {
    return Driver(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      birthdate: birthdate ?? this.birthdate,
      status: status ?? this.status,
      vehicleRegNumber: vehicleRegNumber ?? this.vehicleRegNumber,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      vehicleID: vehicleID ?? this.vehicleID);
  }
  
  Driver.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _fullName = json['fullName'],
      _email = json['email'],
      _phoneNumber = json['phoneNumber'],
      _address = json['address'],
      _birthdate = json['birthdate'],
      _status = json['status'],
      _vehicleRegNumber = json['vehicleRegNumber'],
      _licenseNumber = json['licenseNumber'],
      _vehicleID = json['vehicleID'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'firstName': _firstName, 'lastName': _lastName, 'fullName': _fullName, 'email': _email, 'phoneNumber': _phoneNumber, 'address': _address, 'birthdate': _birthdate, 'status': _status, 'vehicleRegNumber': _vehicleRegNumber, 'licenseNumber': _licenseNumber, 'vehicleID': _vehicleID
  };

  static final QueryField ID = QueryField(fieldName: "driver.id");
  static final QueryField FIRSTNAME = QueryField(fieldName: "firstName");
  static final QueryField LASTNAME = QueryField(fieldName: "lastName");
  static final QueryField FULLNAME = QueryField(fieldName: "fullName");
  static final QueryField EMAIL = QueryField(fieldName: "email");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField ADDRESS = QueryField(fieldName: "address");
  static final QueryField BIRTHDATE = QueryField(fieldName: "birthdate");
  static final QueryField STATUS = QueryField(fieldName: "status");
  static final QueryField VEHICLEREGNUMBER = QueryField(fieldName: "vehicleRegNumber");
  static final QueryField LICENSENUMBER = QueryField(fieldName: "licenseNumber");
  static final QueryField VEHICLEID = QueryField(fieldName: "vehicleID");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Driver";
    modelSchemaDefinition.pluralName = "Drivers";
    
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
      key: Driver.FIRSTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.LASTNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.FULLNAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.EMAIL,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.ADDRESS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.BIRTHDATE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.STATUS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.VEHICLEREGNUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.LICENSENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Driver.VEHICLEID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _DriverModelType extends ModelType<Driver> {
  const _DriverModelType();
  
  @override
  Driver fromJson(Map<String, dynamic> jsonData) {
    return Driver.fromJson(jsonData);
  }
}