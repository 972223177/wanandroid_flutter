/// children : []
/// courseId : 13
/// id : 408
/// name : "鸿洋"
/// order : 190000
/// parentChapterId : 407
/// userControlSetTop : false
/// visible : 1

class Chapter {
  Chapter({
    this.children,
    this.courseId,
    this.id,
    this.name,
    this.order,
    this.parentChapterId,
    this.userControlSetTop,
    this.visible,
  });

  Chapter.fromJson(dynamic json) {
    if (json['children'] != null) {
      children = [];
      json['children'].forEach((v) {
        children?.add(Chapter.fromJson(v));
      });
    }
    courseId = json['courseId'];
    id = json['id'];
    name = json['name'];
    order = json['order'];
    parentChapterId = json['parentChapterId'];
    userControlSetTop = json['userControlSetTop'];
    visible = json['visible'];
  }

  List<Chapter>? children;
  int? courseId;
  int? id;
  String? name;
  int? order;
  int? parentChapterId;
  bool? userControlSetTop;
  int? visible;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (children != null) {
      map['children'] = children?.map((v) => v.toJson()).toList();
    }
    map['courseId'] = courseId;
    map['id'] = id;
    map['name'] = name;
    map['order'] = order;
    map['parentChapterId'] = parentChapterId;
    map['userControlSetTop'] = userControlSetTop;
    map['visible'] = visible;
    return map;
  }

  Chapter copyWith({
    List<Chapter>? children,
    int? courseId,
    int? id,
    String? name,
    int? order,
    int? parentChapterId,
    bool? userControlSetTop,
    int? visible,
  }) {
    return Chapter(
      children: children ?? this.children,
      courseId: courseId ?? this.courseId,
      id: id ?? this.id,
      name: name ?? this.name,
      order: order ?? this.order,
      parentChapterId: parentChapterId ?? this.parentChapterId,
      userControlSetTop: userControlSetTop ?? this.userControlSetTop,
      visible: visible ?? this.visible,
    );
  }
}
