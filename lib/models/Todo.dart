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

/** This is an auto generated class representing the Todo type in your schema. */
@immutable
class Todo extends Model {
  static const classType = const _TodoModelType();
  final String id;
  final String? _name;
  final String? _description;
  final bool? _isTaskCompleted;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String? get description {
    return _description;
  }

  bool get isTaskCompleted {
    try {
      return _isTaskCompleted!;
    } catch (e) {
      throw new DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  const Todo._internal(
      {required this.id, required name, description, required isTaskCompleted})
      : _name = name,
        _description = description,
        _isTaskCompleted = isTaskCompleted;

  factory Todo(
      {String? id,
      required String name,
      String? description,
      required bool isTaskCompleted}) {
    return Todo._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        description: description,
        isTaskCompleted: isTaskCompleted);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        _name == other._name &&
        _description == other._description &&
        _isTaskCompleted == other._isTaskCompleted;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Todo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("isTaskCompleted=" +
        (_isTaskCompleted != null ? _isTaskCompleted!.toString() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Todo copyWith(
      {String? id, String? name, String? description, bool? isTaskCompleted}) {
    return Todo(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        isTaskCompleted: isTaskCompleted ?? this.isTaskCompleted);
  }

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _description = json['description'],
        _isTaskCompleted = json['isTaskCompleted'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'description': _description,
        'isTaskCompleted': _isTaskCompleted
      };

  static final QueryField ID = QueryField(fieldName: "todo.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField ISTASKCOMPLETED =
      QueryField(fieldName: "isTaskCompleted");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Todo";
    modelSchemaDefinition.pluralName = "Todos";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.DESCRIPTION,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Todo.ISTASKCOMPLETED,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));
  });
}

class _TodoModelType extends ModelType<Todo> {
  const _TodoModelType();

  @override
  Todo fromJson(Map<String, dynamic> jsonData) {
    return Todo.fromJson(jsonData);
  }
}
