typedef DecodePageData<T> = T Function(Map<String, dynamic>);
typedef EncodePageData<T> = List<Map<String, dynamic>> Function(List<T> data);

class PageData<T> {
  int? curPage;
  List<T>? datas;
  int? offset;
  bool? over;
  int? pageCount;
  int? size;
  int? total;

//<editor-fold desc="Data Methods">

  PageData({
    this.curPage,
    this.datas,
    this.offset,
    this.over,
    this.pageCount,
    this.size,
    this.total,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PageData &&
          runtimeType == other.runtimeType &&
          curPage == other.curPage &&
          datas == other.datas &&
          offset == other.offset &&
          over == other.over &&
          pageCount == other.pageCount &&
          size == other.size &&
          total == other.total);

  @override
  int get hashCode =>
      curPage.hashCode ^
      datas.hashCode ^
      offset.hashCode ^
      over.hashCode ^
      pageCount.hashCode ^
      size.hashCode ^
      total.hashCode;

  @override
  String toString() {
    return 'Page{'
        ' curPage: $curPage,'
        ' data: $datas,'
        ' offset: $offset,'
        ' over: $over,'
        ' pageCount: $pageCount,'
        ' size: $size,'
        ' total: $total,'
        '}';
  }

  PageData copyWith({
    int? curPage,
    List<T>? datas,
    int? offset,
    bool? over,
    int? pageCount,
    int? size,
    int? total,
  }) {
    return PageData(
      curPage: curPage ?? this.curPage,
      datas: datas ?? this.datas,
      offset: offset ?? this.offset,
      over: over ?? this.over,
      pageCount: pageCount ?? this.pageCount,
      size: size ?? this.size,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toJSon(EncodePageData<T> encode) {
    return {
      'curPage': curPage,
      'data': datas != null ? encode(datas!) : null,
      'offset': offset,
      'over': over,
      'pageCount': pageCount,
      'size': size,
      'total': total,
    };
  }

  factory PageData.fromJson(
    Map<String, dynamic> map,
    DecodePageData<T> parse,
  ) {
    return PageData(
      curPage: map['curPage'],
      datas: map['datas']?.map<T>((v) {
        return parse(v);
      })?.toList(),
      offset: map['offset'],
      over: map['over'],
      pageCount: map['pageCount'],
      size: map['size'],
      total: map['total'],
    );
  }

//</editor-fold>
}
