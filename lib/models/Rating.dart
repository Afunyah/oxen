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


/** This is an auto generated class representing the Rating type in your schema. */
@immutable
class Rating extends Model {
  static const classType = const _RatingModelType();
  final String id;
  final String? _customerId;
  final String? _targetId;
  final int? _points;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get customerId {
    try {
      return _customerId!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  String get targetId {
    try {
      return _targetId!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  int get points {
    try {
      return _points!;
    } catch(e) {
      throw new DataStoreException(
      DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
      recoverySuggestion:
        DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
      underlyingException: e.toString()
    );
    }
  }
  
  const Rating._internal({required this.id, required customerId, required targetId, required points}): _customerId = customerId, _targetId = targetId, _points = points;
  
  factory Rating({String? id, required String customerId, required String targetId, required int points}) {
    return Rating._internal(
      id: id == null ? UUID.getUUID() : id,
      customerId: customerId,
      targetId: targetId,
      points: points);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rating &&
      id == other.id &&
      _customerId == other._customerId &&
      _targetId == other._targetId &&
      _points == other._points;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Rating {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("customerId=" + "$_customerId" + ", ");
    buffer.write("targetId=" + "$_targetId" + ", ");
    buffer.write("points=" + (_points != null ? _points!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Rating copyWith({String? id, String? customerId, String? targetId, int? points}) {
    return Rating(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      targetId: targetId ?? this.targetId,
      points: points ?? this.points);
  }
  
  Rating.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _customerId = json['customerId'],
      _targetId = json['targetId'],
      _points = (json['points'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'id': id, 'customerId': _customerId, 'targetId': _targetId, 'points': _points
  };

  static final QueryField ID = QueryField(fieldName: "rating.id");
  static final QueryField CUSTOMERID = QueryField(fieldName: "customerId");
  static final QueryField TARGETID = QueryField(fieldName: "targetId");
  static final QueryField POINTS = QueryField(fieldName: "points");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Rating";
    modelSchemaDefinition.pluralName = "Ratings";
    
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
      key: Rating.CUSTOMERID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.TARGETID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Rating.POINTS,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
  });
}

class _RatingModelType extends ModelType<Rating> {
  const _RatingModelType();
  
  @override
  Rating fromJson(Map<String, dynamic> jsonData) {
    return Rating.fromJson(jsonData);
  }
}