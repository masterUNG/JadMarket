// To parse this JSON data, do
//
//     final activityModel = activityModelFromJson(jsonString);

import 'dart:convert';

ActivityModel? activityModelFromJson(String str) =>
    ActivityModel.fromJson(json.decode(str));

String activityModelToJson(ActivityModel? data) => json.encode(data!.toJson());

class ActivityModel {
  ActivityModel({
    this.activity,
  });

  List<Activity?>? activity;

  factory ActivityModel.fromJson(Map<String, dynamic> json) => ActivityModel(
        activity: json["activity"] == null
            ? []
            : json["activity"] == null
                ? []
                : List<Activity?>.from(
                    json["activity"]!.map((x) => Activity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity == null
            ? []
            : activity == null
                ? []
                : List<dynamic>.from(activity!.map((x) => x!.toJson())),
      };
}

class Activity {
  Activity({
    this.name,
    this.currentValue,
    this.maxValue,
  });

  String? name;
  double? currentValue;
  double? maxValue;

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        name: json["name"],
        currentValue: json["current_value"],
        maxValue: json["max_value"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "current_value": currentValue,
        "max_value": maxValue,
      };
}
