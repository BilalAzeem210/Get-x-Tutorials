
class Promomodel {
  Promomodel({
      List<Items>? items,}){
    _items = items;
}

  Promomodel.fromJson(dynamic json) {
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  List<Items>? _items;
Promomodel copyWith({  List<Items>? items,
}) => Promomodel(  items: items ?? _items,
);
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}



class Items {
  Items({
      num? notificationPk, 
      String? contentsBlob, 
      String? rcvddate, 
      String? enddate, 
      String? notification, 
      String? price,
  }){
    _notificationPk = notificationPk;
    _contentsBlob = contentsBlob;
    _rcvddate = rcvddate;
    _enddate = enddate;
    _notification = notification;
    _price = price;

}

  Items.fromJson(dynamic json) {
    _notificationPk = json['notification_pk'];
    _contentsBlob = json['contents_blob'];
    _rcvddate = json['rcvddate'];
    _enddate = json['enddate'];
    _notification = json['notification'];
    _price = json['price'];
  }
  num? _notificationPk;
  String? _contentsBlob;
  String? _rcvddate;
  String? _enddate;
  String? _notification;
  String? _price;
Items copyWith({  num? notificationPk,
  String? contentsBlob,
  String? rcvddate,
  String? enddate,
  String? notification,
  String? price,
  }) => Items(  notificationPk: notificationPk ?? _notificationPk,
  contentsBlob: contentsBlob ?? _contentsBlob,
  rcvddate: rcvddate ?? _rcvddate,
  enddate: enddate ?? _enddate,
  notification: notification ?? _notification,
  price: price ?? _price,
);
  num? get notificationPk => _notificationPk;
  String? get contentsBlob => _contentsBlob;
  String? get rcvddate => _rcvddate;
  String? get enddate => _enddate;
  String? get notification => _notification;
  String? get price => _price;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['notification_pk'] = _notificationPk;
    map['contents_blob'] = _contentsBlob;
    map['rcvddate'] = _rcvddate;
    map['enddate'] = _enddate;
    map['notification'] = _notification;
    map['price'] = _price;

    return map;
  }

}

