class TicketMSModel {
  int? pk;
  int? customerIdFk;
  String? mobileNumber;
  int? total;
  int? discountAmount;
  dynamic subTotal;
  int? receivedAmount;
  int? returnAmount;
  String? paymentType;
  String? sellPerson;
  int? bunitFk;
  String? sellDate;
  String? couponCode;
  dynamic vat;
  String? slType;
  String? trnId;
  int? discountAble;
  String? discountCoupon;
  int? discountPct;
  dynamic vatableAmt;
  int? netAmt;
  int? appAvil;
  String? unixtimestamp;
  String? usedBranch;
  String? useDate;
  String? startDate;

  TicketMSModel(
      {this.pk,
        this.customerIdFk,
        this.mobileNumber,
        this.total,
        this.discountAmount,
        this.subTotal,
        this.receivedAmount,
        this.returnAmount,
        this.paymentType,
        this.sellPerson,
        this.bunitFk,
        this.sellDate,
        this.couponCode,
        this.vat,
        this.slType,
        this.trnId,
        this.discountAble,
        this.discountCoupon,
        this.discountPct,
        this.vatableAmt,
        this.netAmt,
        this.appAvil,
        this.unixtimestamp,
        this.usedBranch,
        this.useDate,
        this.startDate});

  TicketMSModel.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    customerIdFk = json['customer_id_fk'];
    mobileNumber = json['mobile_number'];
    total = json['total'];
    discountAmount = json['discount_amount'];
    subTotal = json['sub_total'];
    receivedAmount = json['received_amount'];
    returnAmount = json['return_amount'];
    paymentType = json['payment_type'];
    sellPerson = json['sell_person'];
    bunitFk = json['bunit_fk'];
    sellDate = json['sell_date'];
    couponCode = json['coupon_code'];
    vat = json['vat'];
    slType = json['sl_type'];
    trnId = json['trn_id'];
    discountAble = json['discount_able'];
    discountCoupon = json['discount_coupon'];
    discountPct = json['discount_pct'];
    vatableAmt = json['vatable_amt'];
    netAmt = json['net_amt'];
    appAvil = json['app_avil'];
    unixtimestamp = json['unixtimestamp'];
    usedBranch = json['used_branch'];
    useDate = json['use_date'];
    startDate = json['start_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pk'] = this.pk;
    data['customer_id_fk'] = this.customerIdFk;
    data['mobile_number'] = this.mobileNumber;
    data['total'] = this.total;
    data['discount_amount'] = this.discountAmount;
    data['sub_total'] = this.subTotal;
    data['received_amount'] = this.receivedAmount;
    data['return_amount'] = this.returnAmount;
    data['payment_type'] = this.paymentType;
    data['sell_person'] = this.sellPerson;
    data['bunit_fk'] = this.bunitFk;
    data['sell_date'] = this.sellDate;
    data['coupon_code'] = this.couponCode;
    data['vat'] = this.vat;
    data['sl_type'] = this.slType;
    data['trn_id'] = this.trnId;
    data['discount_able'] = this.discountAble;
    data['discount_coupon'] = this.discountCoupon;
    data['discount_pct'] = this.discountPct;
    data['vatable_amt'] = this.vatableAmt;
    data['net_amt'] = this.netAmt;
    data['app_avil'] = this.appAvil;
    data['unixtimestamp'] = this.unixtimestamp;
    data['used_branch'] = this.usedBranch;
    data['use_date'] = this.useDate;
    data['start_date'] = this.startDate;
    return data;
  }
}