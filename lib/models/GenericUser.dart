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


/** This is an auto generated class representing the GenericUser type in your schema. */
@immutable
class GenericUser extends Model {
  static const classType = const _GenericUserModelType();
  final String id;
  final String? _phoneNumber;
  final bool? _isCustomer;
  final bool? _isDriver;
  final bool? _isCompany;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get phoneNumber {
    try {
      return _phoneNumber!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  bool get isCustomer {
    try {
      return _isCustomer!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  bool get isDriver {
    try {
      return _isDriver!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  bool get isCompany {
    try {
      return _isCompany!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  const GenericUser._internal({required this.id, required phoneNumber, required isCustomer, required isDriver, required isCompany}): _phoneNumber = phoneNumber, _isCustomer = isCustomer, _isDriver = isDriver, _isCompany = isCompany;
  
  factory GenericUser({String? id, required String phoneNumber, required bool isCustomer, required bool isDriver, required bool isCompany}) {
    return GenericUser._internal(
      id: id == null ? UUID.getUUID() : id,
      phoneNumber: phoneNumber,
      isCustomer: isCustomer,
      isDriver: isDriver,
      isCompany: isCompany);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenericUser &&
      id == other.id &&
      _phoneNumber == other._phoneNumber &&
      _isCustomer == other._isCustomer &&
      _isDriver == other._isDriver &&
      _isCompany == other._isCompany;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GenericUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("isCustomer=" + (_isCustomer != null ? _isCustomer!.toString() : "null") + ", ");
    buffer.write("isDriver=" + (_isDriver != null ? _isDriver!.toString() : "null") + ", ");
    buffer.write("isCompany=" + (_isCompany != null ? _isCompany!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GenericUser copyWith({String? id, String? phoneNumber, bool? isCustomer, bool? isDriver, bool? isCompany}) {
    return GenericUser(
      id: id ?? this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isCustomer: isCustomer ?? this.isCustomer,
      isDriver: isDriver ?? this.isDriver,
      isCompany: isCompany ?? this.isCompany);
  }
  
  GenericUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _phoneNumber = json['phoneNumber'],
      _isCustomer = json['isCustomer'],
      _isDriver = json['isDriver'],
      _isCompany = json['isCompany'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'phoneNumber': _phoneNumber, 'isCustomer': _isCustomer, 'isDriver': _isDriver, 'isCompany': _isCompany
  };

  static final QueryField ID = QueryField(fieldName: "genericUser.id");
  static final QueryField PHONENUMBER = QueryField(fieldName: "phoneNumber");
  static final QueryField ISCUSTOMER = QueryField(fieldName: "isCustomer");
  static final QueryField ISDRIVER = QueryField(fieldName: "isDriver");
  static final QueryField ISCOMPANY = QueryField(fieldName: "isCompany");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GenericUser";
    modelSchemaDefinition.pluralName = "GenericUsers";
    
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
      key: GenericUser.PHONENUMBER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: GenericUser.ISCUSTOMER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: GenericUser.ISDRIVER,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: GenericUser.ISCOMPANY,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _GenericUserModelType extends ModelType<GenericUser> {
  const _GenericUserModelType();
  
  @override
  GenericUser fromJson(Map<String, dynamic> jsonData) {
    return GenericUser.fromJson(jsonData);
  }
}