/// tab的名字
enum TabNames {
  pageReCommended(name: "pageRecommended", value: "推荐"),
  pagePopular(name: "pagePopular", value: "热门"),
  pageBangumi(name: "pageBangumi", value: "动画"),
  pageTV(name: "pageTV", value: "影视"),
  ;

  const TabNames({required this.name, required this.value});
  final String name;
  final String value;


}