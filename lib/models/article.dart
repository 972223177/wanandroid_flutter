import 'package:wanandroid_flutter/models/tag.dart';

class Article {
  String? apkLink;
  int? audit;
  String? author;
  bool? canEdit;
  int? chapterId;
  String? chapterName;
  bool? collect;
  int? courseId;
  String? desc;
  String? descMd;
  String? envelopePic;
  bool? fresh;
  String? host;
  int? id;
  String? link;
  String? niceDate;
  String? niceShareDate;
  String? origin;
  String? prefix;
  String? projectLink;
  int? publishTime;
  int? realSuperChapterId;
  int? selfVisible;
  int? shareDate;
  String? shareUser;
  int? superChapterId;
  String? superChapterName;
  List<Tag>? tags;
  String? title;
  int? type;
  int? userId;
  int? visible;
  int? zan;
  bool? top;

//<editor-fold desc="Data Methods">

  Article({
    this.apkLink,
    this.audit,
    this.author,
    this.canEdit,
    this.chapterId,
    this.chapterName,
    this.collect,
    this.courseId,
    this.desc,
    this.descMd,
    this.envelopePic,
    this.fresh,
    this.host,
    this.id,
    this.link,
    this.niceDate,
    this.niceShareDate,
    this.origin,
    this.prefix,
    this.projectLink,
    this.publishTime,
    this.realSuperChapterId,
    this.selfVisible,
    this.shareDate,
    this.shareUser,
    this.superChapterId,
    this.superChapterName,
    this.tags,
    this.title,
    this.type,
    this.userId,
    this.visible,
    this.zan,
    this.top,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Article &&
          runtimeType == other.runtimeType &&
          apkLink == other.apkLink &&
          audit == other.audit &&
          author == other.author &&
          canEdit == other.canEdit &&
          chapterId == other.chapterId &&
          chapterName == other.chapterName &&
          collect == other.collect &&
          courseId == other.courseId &&
          desc == other.desc &&
          descMd == other.descMd &&
          envelopePic == other.envelopePic &&
          fresh == other.fresh &&
          host == other.host &&
          id == other.id &&
          link == other.link &&
          niceDate == other.niceDate &&
          niceShareDate == other.niceShareDate &&
          origin == other.origin &&
          prefix == other.prefix &&
          projectLink == other.projectLink &&
          publishTime == other.publishTime &&
          realSuperChapterId == other.realSuperChapterId &&
          selfVisible == other.selfVisible &&
          shareDate == other.shareDate &&
          shareUser == other.shareUser &&
          superChapterId == other.superChapterId &&
          superChapterName == other.superChapterName &&
          tags == other.tags &&
          title == other.title &&
          type == other.type &&
          userId == other.userId &&
          visible == other.visible &&
          zan == other.zan &&
          top == other.top);

  @override
  int get hashCode =>
      apkLink.hashCode ^
      audit.hashCode ^
      author.hashCode ^
      canEdit.hashCode ^
      chapterId.hashCode ^
      chapterName.hashCode ^
      collect.hashCode ^
      courseId.hashCode ^
      desc.hashCode ^
      descMd.hashCode ^
      envelopePic.hashCode ^
      fresh.hashCode ^
      host.hashCode ^
      id.hashCode ^
      link.hashCode ^
      niceDate.hashCode ^
      niceShareDate.hashCode ^
      origin.hashCode ^
      prefix.hashCode ^
      projectLink.hashCode ^
      publishTime.hashCode ^
      realSuperChapterId.hashCode ^
      selfVisible.hashCode ^
      shareDate.hashCode ^
      shareUser.hashCode ^
      superChapterId.hashCode ^
      superChapterName.hashCode ^
      tags.hashCode ^
      title.hashCode ^
      type.hashCode ^
      userId.hashCode ^
      visible.hashCode ^
      zan.hashCode ^
      top.hashCode;

  @override
  String toString() {
    return 'Article{' +
        ' apkLink: $apkLink,' +
        ' audit: $audit,' +
        ' author: $author,' +
        ' canEdit: $canEdit,' +
        ' chapterId: $chapterId,' +
        ' chapterName: $chapterName,' +
        ' collect: $collect,' +
        ' courseId: $courseId,' +
        ' desc: $desc,' +
        ' descMd: $descMd,' +
        ' envelopePic: $envelopePic,' +
        ' fresh: $fresh,' +
        ' host: $host,' +
        ' id: $id,' +
        ' link: $link,' +
        ' niceDate: $niceDate,' +
        ' niceShareDate: $niceShareDate,' +
        ' origin: $origin,' +
        ' prefix: $prefix,' +
        ' projectLink: $projectLink,' +
        ' publishTime: $publishTime,' +
        ' realSuperChapterId: $realSuperChapterId,' +
        ' selfVisible: $selfVisible,' +
        ' shareDate: $shareDate,' +
        ' shareUser: $shareUser,' +
        ' superChapterId: $superChapterId,' +
        ' superChapterName: $superChapterName,' +
        ' tags: $tags,' +
        ' title: $title,' +
        ' type: $type,' +
        ' userId: $userId,' +
        ' visible: $visible,' +
        ' zan: $zan,' +
        ' top: $top,' +
        '}';
  }

  Article copyWith({
    String? apkLink,
    int? audit,
    String? author,
    bool? canEdit,
    int? chapterId,
    String? chapterName,
    bool? collect,
    int? courseId,
    String? desc,
    String? descMd,
    String? envelopePic,
    bool? fresh,
    String? host,
    int? id,
    String? link,
    String? niceDate,
    String? niceShareDate,
    String? origin,
    String? prefix,
    String? projectLink,
    int? publishTime,
    int? realSuperChapterId,
    int? selfVisible,
    int? shareDate,
    String? shareUser,
    int? superChapterId,
    String? superChapterName,
    List<Tag>? tags,
    String? title,
    int? type,
    int? userId,
    int? visible,
    int? zan,
    bool? top,
  }) {
    return Article(
      apkLink: apkLink ?? this.apkLink,
      audit: audit ?? this.audit,
      author: author ?? this.author,
      canEdit: canEdit ?? this.canEdit,
      chapterId: chapterId ?? this.chapterId,
      chapterName: chapterName ?? this.chapterName,
      collect: collect ?? this.collect,
      courseId: courseId ?? this.courseId,
      desc: desc ?? this.desc,
      descMd: descMd ?? this.descMd,
      envelopePic: envelopePic ?? this.envelopePic,
      fresh: fresh ?? this.fresh,
      host: host ?? this.host,
      id: id ?? this.id,
      link: link ?? this.link,
      niceDate: niceDate ?? this.niceDate,
      niceShareDate: niceShareDate ?? this.niceShareDate,
      origin: origin ?? this.origin,
      prefix: prefix ?? this.prefix,
      projectLink: projectLink ?? this.projectLink,
      publishTime: publishTime ?? this.publishTime,
      realSuperChapterId: realSuperChapterId ?? this.realSuperChapterId,
      selfVisible: selfVisible ?? this.selfVisible,
      shareDate: shareDate ?? this.shareDate,
      shareUser: shareUser ?? this.shareUser,
      superChapterId: superChapterId ?? this.superChapterId,
      superChapterName: superChapterName ?? this.superChapterName,
      tags: tags ?? this.tags,
      title: title ?? this.title,
      type: type ?? this.type,
      userId: userId ?? this.userId,
      visible: visible ?? this.visible,
      zan: zan ?? this.zan,
      top: top ?? this.top,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'apkLink': apkLink,
      'audit': audit,
      'author': author,
      'canEdit': canEdit,
      'chapterId': chapterId,
      'chapterName': chapterName,
      'collect': collect,
      'courseId': courseId,
      'desc': desc,
      'descMd': descMd,
      'envelopePic': envelopePic,
      'fresh': fresh,
      'host': host,
      'id': id,
      'link': link,
      'niceDate': niceDate,
      'niceShareDate': niceShareDate,
      'origin': origin,
      'prefix': prefix,
      'projectLink': projectLink,
      'publishTime': publishTime,
      'realSuperChapterId': realSuperChapterId,
      'selfVisible': selfVisible,
      'shareDate': shareDate,
      'shareUser': shareUser,
      'superChapterId': superChapterId,
      'superChapterName': superChapterName,
      'tags': tags?.map((e) => e.toJson()).toList(),
      'title': title,
      'type': type,
      'userId': userId,
      'visible': visible,
      'zan': zan,
      'top': top,
    };
  }

  factory Article.fromJson(Map<String, dynamic> map) {
    return Article(
      apkLink: map['apkLink'],
      audit: map['audit'],
      author: map['author'],
      canEdit: map['canEdit'],
      chapterId: map['chapterId'],
      chapterName: map['chapterName'],
      collect: map['collect'],
      courseId: map['courseId'],
      desc: map['desc'],
      descMd: map['descMd'],
      envelopePic: map['envelopePic'],
      fresh: map['fresh'],
      host: map['host'],
      id: map['id'],
      link: map['link'],
      niceDate: map['niceDate'],
      niceShareDate: map['niceShareDate'],
      origin: map['origin'],
      prefix: map['prefix'],
      projectLink: map['projectLink'],
      publishTime: map['publishTime'],
      realSuperChapterId: map['realSuperChapterId'],
      selfVisible: map['selfVisible'],
      shareDate: map['shareDate'],
      shareUser: map['shareUser'],
      superChapterId: map['superChapterId'],
      superChapterName: map['superChapterName'],
      tags: map['tags']?.map<Tag>((v) {
        return Tag.fromJson(v);
      })?.toList(),
      title: map['title'],
      type: map['type'],
      userId: map['userId'],
      visible: map['visible'],
      zan: map['zan'],
      top: map['top'],
    );
  }

//</editor-fold>
}
