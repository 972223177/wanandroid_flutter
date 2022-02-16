class Tag {
  String? name;
  String? url;

//<editor-fold desc="Data Methods">

  Tag({
    this.name,
    this.url,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          url == other.url);

  @override
  int get hashCode => name.hashCode ^ url.hashCode;

  @override
  String toString() {
    return 'Tag{' ' name: $name,' ' url: $url,' '}';
  }

  Tag copyWith({
    String? name,
    String? url,
  }) {
    return Tag(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  factory Tag.fromJson(Map<String, dynamic> map) {
    return Tag(
      name: map['name'],
      url: map['url'],
    );
  }

//</editor-fold>
}
