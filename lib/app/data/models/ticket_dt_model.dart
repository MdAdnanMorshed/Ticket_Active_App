class TicketDTModel {
  int? pk;
  int? iteminfoFk;
  int? tslmsFk;
  String? dsc;
  int? tp;
  int? mrp;
  int? qty;
  int? discount;
  double? vat;
  int? bunitFk;
  int? isCombo;
  String? appAvail;
  String? msmasteridOffersid;

  TicketDTModel(
      {this.pk,
        this.iteminfoFk,
        this.tslmsFk,
        this.dsc,
        this.tp,
        this.mrp,
        this.qty,
        this.discount,
        this.vat,
        this.bunitFk,
        this.isCombo,
        this.appAvail,
        this.msmasteridOffersid});

  TicketDTModel.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    iteminfoFk = json['iteminfo_fk'];
    tslmsFk = json['tslms_fk'];
    dsc = json['dsc'];
    tp = json['tp'];
    mrp = json['mrp'];
    qty = json['qty'];
    discount = json['discount'];
    vat = json['vat'];
    bunitFk = json['bunit_fk'];
    isCombo = json['is_combo'];
    appAvail = json['app_avail'];
    msmasteridOffersid = json['msmasterid_offersid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pk'] = this.pk;
    data['iteminfo_fk'] = this.iteminfoFk;
    data['tslms_fk'] = this.tslmsFk;
    data['dsc'] = this.dsc;
    data['tp'] = this.tp;
    data['mrp'] = this.mrp;
    data['qty'] = this.qty;
    data['discount'] = this.discount;
    data['vat'] = this.vat;
    data['bunit_fk'] = this.bunitFk;
    data['is_combo'] = this.isCombo;
    data['app_avail'] = this.appAvail;
    data['msmasterid_offersid'] = this.msmasteridOffersid;
    return data;
  }
}