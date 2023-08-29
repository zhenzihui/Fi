class PageReq {
  final int page;
  final int? pageCount;

  PageReq copyWith(int? page, {int? pageCount}) =>
      PageReq(page ?? this.page, pageCount ?? this.pageCount);

  PageReq(this.page, [this.pageCount = 20]);

  toJson() => {'pn': page, 'ps': pageCount};
}
