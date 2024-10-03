import 'package:json_annotation/json_annotation.dart';

part 'timeline.g.dart';
@JsonSerializable()
class Timeline{
  int id;
  String mensagem;

  Timeline({ required this.id, required this.mensagem});

  //transforma em um objeto
  factory Timeline.fromJson(Map<String, dynamic> json) =>
      //  id: json['id'],
      // mensagem: json['mensagem']
      _$TimelineFromJson(json);
      toJson() => _$TimelineToJson(this);
  }
