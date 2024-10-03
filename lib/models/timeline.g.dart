// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timeline _$TimelineFromJson(Map<String, dynamic> json) => Timeline(
      id: (json['id'] as num).toInt(),
      mensagem: json['mensagem'] as String,
    );

Map<String, dynamic> _$TimelineToJson(Timeline instance) => <String, dynamic>{
      'id': instance.id,
      'mensagem': instance.mensagem,
    };
