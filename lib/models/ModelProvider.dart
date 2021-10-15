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
import 'Company.dart';
import 'Customer.dart';
import 'GenericUser.dart';
import 'Rating.dart';
import 'Review.dart';
import 'Rider.dart';
import 'Vehicle.dart';

export 'Company.dart';
export 'Customer.dart';
export 'GenericUser.dart';
export 'Rating.dart';
export 'Review.dart';
export 'Rider.dart';
export 'Vehicle.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "e9318be9484dd208d3b6692d3fcabc71";
  @override
  List<ModelSchema> modelSchemas = [Company.schema, Customer.schema, GenericUser.schema, Rating.schema, Review.schema, Rider.schema, Vehicle.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
    case "Company": {
    return Company.classType;
    }
    break;
    case "Customer": {
    return Customer.classType;
    }
    break;
    case "GenericUser": {
    return GenericUser.classType;
    }
    break;
    case "Rating": {
    return Rating.classType;
    }
    break;
    case "Review": {
    return Review.classType;
    }
    break;
    case "Rider": {
    return Rider.classType;
    }
    break;
    case "Vehicle": {
    return Vehicle.classType;
    }
    break;
    default: {
    throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
    }
  }
}