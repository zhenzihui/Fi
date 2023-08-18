class PageReq {
  int page;
  final int pageCount;

  PageReq(this.page, [this.pageCount = 20]);

  toJson() => {
    'pn': page,
    'ps': pageCount
  };
}