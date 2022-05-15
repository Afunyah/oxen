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
import 'Company.dart';
import 'Customer.dart';
import 'Delivery.dart';
import 'GenericUser.dart';
import 'Rating.dart';
import 'Review.dart';
import 'Rider.dart';
import 'Vehicle.dart';

export 'Company.dart';
export 'Customer.dart';
export 'Delivery.dart';
export 'GenericUser.dart';
export 'Rating.dart';
export 'Review.dart';
export 'Rider.dart';
export 'Vehicle.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "cbc3bb29b2883539c1487665ec64114a";
  @override
  List<ModelSchema> modelSchemas = [Company.schema, Customer.schema, Delivery.schema, GenericUser.schema, Rating.schema, Review.schema, Rider.schema, Vehicle.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Company":
        return Company.classType;
      case "Customer":
        return Customer.classType;
      case "Delivery":
        return Delivery.classType;
      case "GenericUser":
        return GenericUser.classType;
      case "Rating":
        return Rating.classType;
      case "Review":
        return Review.classType;
      case "Rider":
        return Rider.classType;
      case "Vehicle":
        return Vehicle.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}