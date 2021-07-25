class PersonalLoanModel {
  String type;
  Fees fees;
  List<InterestRates> interestRates;
  List<String> requiredWarranties;
  String termsConditions;
  String companyName;
  String companyCnpj;

  PersonalLoanModel(
      {this.type,
      this.fees,
      this.interestRates,
      this.requiredWarranties,
      this.termsConditions,
      this.companyName,
      this.companyCnpj});

  PersonalLoanModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    fees = json['fees'] != null ? new Fees.fromJson(json['fees']) : null;
    if (json['interestRates'] != null) {
      interestRates = new List<InterestRates>();
      json['interestRates'].forEach((v) {
        interestRates.add(new InterestRates.fromJson(v));
      });
    }
    requiredWarranties = json['requiredWarranties'].cast<String>();
    termsConditions = json['termsConditions'];
    companyName = json['companyName'];
    companyCnpj = json['companyCnpj'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.fees != null) {
      data['fees'] = this.fees.toJson();
    }
    if (this.interestRates != null) {
      data['interestRates'] =
          this.interestRates.map((v) => v.toJson()).toList();
    }
    data['requiredWarranties'] = this.requiredWarranties;
    data['termsConditions'] = this.termsConditions;
    data['companyName'] = this.companyName;
    data['companyCnpj'] = this.companyCnpj;
    return data;
  }
}

class Fees {
  List<Services> services;

  Fees({this.services});

  Fees.fromJson(Map<String, dynamic> json) {
    if (json['services'] != null) {
      services = new List<Services>();
      json['services'].forEach((v) {
        services.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.services != null) {
      data['services'] = this.services.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  String name;
  String code;
  String chargingTriggerInfo;
  List<Prices> prices;
  Minimum minimum;
  Minimum maximum;

  Services(
      {this.name,
      this.code,
      this.chargingTriggerInfo,
      this.prices,
      this.minimum,
      this.maximum});

  Services.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    chargingTriggerInfo = json['chargingTriggerInfo'];
    if (json['prices'] != null) {
      prices = new List<Prices>();
      json['prices'].forEach((v) {
        prices.add(new Prices.fromJson(v));
      });
    }
    minimum =
        json['minimum'] != null ? new Minimum.fromJson(json['minimum']) : null;
    maximum =
        json['maximum'] != null ? new Minimum.fromJson(json['maximum']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['chargingTriggerInfo'] = this.chargingTriggerInfo;
    if (this.prices != null) {
      data['prices'] = this.prices.map((v) => v.toJson()).toList();
    }
    if (this.minimum != null) {
      data['minimum'] = this.minimum.toJson();
    }
    if (this.maximum != null) {
      data['maximum'] = this.maximum.toJson();
    }
    return data;
  }
}

class Prices {
  String interval;
  String value;
  String currency;
  Customers customers;

  Prices({this.interval, this.value, this.currency, this.customers});

  Prices.fromJson(Map<String, dynamic> json) {
    interval = json['interval'];
    value = json['value'];
    currency = json['currency'];
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['interval'] = this.interval;
    data['value'] = this.value;
    data['currency'] = this.currency;
    if (this.customers != null) {
      data['customers'] = this.customers.toJson();
    }
    return data;
  }
}

class Customers {
  String rate;

  Customers({this.rate});

  Customers.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    return data;
  }
}

class Minimum {
  String value;
  String currency;

  Minimum({this.value, this.currency});

  Minimum.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['currency'] = this.currency;
    return data;
  }
}

class InterestRates {
  String referentialRateIndexer;
  String rate;
  List<Applications> applications;
  String minimumRate;
  String maximumRate;

  InterestRates(
      {this.referentialRateIndexer,
      this.rate,
      this.applications,
      this.minimumRate,
      this.maximumRate});

  InterestRates.fromJson(Map<String, dynamic> json) {
    referentialRateIndexer = json['referentialRateIndexer'];
    rate = json['rate'];
    if (json['applications'] != null) {
      applications = new List<Applications>();
      json['applications'].forEach((v) {
        applications.add(new Applications.fromJson(v));
      });
    }
    minimumRate = json['minimumRate'];
    maximumRate = json['maximumRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['referentialRateIndexer'] = this.referentialRateIndexer;
    data['rate'] = this.rate;
    if (this.applications != null) {
      data['applications'] = this.applications.map((v) => v.toJson()).toList();
    }
    data['minimumRate'] = this.minimumRate;
    data['maximumRate'] = this.maximumRate;
    return data;
  }
}

class Applications {
  String interval;
  Customers indexer;
  Customers customers;

  Applications({this.interval, this.indexer, this.customers});

  Applications.fromJson(Map<String, dynamic> json) {
    interval = json['interval'];
    indexer = json['indexer'] != null
        ? new Customers.fromJson(json['indexer'])
        : null;
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['interval'] = this.interval;
    if (this.indexer != null) {
      data['indexer'] = this.indexer.toJson();
    }
    if (this.customers != null) {
      data['customers'] = this.customers.toJson();
    }
    return data;
  }
}class PersonalLoanModel {
  String type;
  Fees fees;
  List<InterestRates> interestRates;
  List<String> requiredWarranties;
  String termsConditions;
  String companyName;
  String companyCnpj;

  PersonalLoanModel(
      {this.type,
      this.fees,
      this.interestRates,
      this.requiredWarranties,
      this.termsConditions,
      this.companyName,
      this.companyCnpj});

  PersonalLoanModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    fees = json['fees'] != null ? new Fees.fromJson(json['fees']) : null;
    if (json['interestRates'] != null) {
      interestRates = new List<InterestRates>();
      json['interestRates'].forEach((v) {
        interestRates.add(new InterestRates.fromJson(v));
      });
    }
    requiredWarranties = json['requiredWarranties'].cast<String>();
    termsConditions = json['termsConditions'];
    companyName = json['companyName'];
    companyCnpj = json['companyCnpj'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.fees != null) {
      data['fees'] = this.fees.toJson();
    }
    if (this.interestRates != null) {
      data['interestRates'] =
          this.interestRates.map((v) => v.toJson()).toList();
    }
    data['requiredWarranties'] = this.requiredWarranties;
    data['termsConditions'] = this.termsConditions;
    data['companyName'] = this.companyName;
    data['companyCnpj'] = this.companyCnpj;
    return data;
  }
}

class Fees {
  List<Services> services;

  Fees({this.services});

  Fees.fromJson(Map<String, dynamic> json) {
    if (json['services'] != null) {
      services = new List<Services>();
      json['services'].forEach((v) {
        services.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.services != null) {
      data['services'] = this.services.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  String name;
  String code;
  String chargingTriggerInfo;
  List<Prices> prices;
  Minimum minimum;
  Minimum maximum;

  Services(
      {this.name,
      this.code,
      this.chargingTriggerInfo,
      this.prices,
      this.minimum,
      this.maximum});

  Services.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    chargingTriggerInfo = json['chargingTriggerInfo'];
    if (json['prices'] != null) {
      prices = new List<Prices>();
      json['prices'].forEach((v) {
        prices.add(new Prices.fromJson(v));
      });
    }
    minimum =
        json['minimum'] != null ? new Minimum.fromJson(json['minimum']) : null;
    maximum =
        json['maximum'] != null ? new Minimum.fromJson(json['maximum']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.code;
    data['chargingTriggerInfo'] = this.chargingTriggerInfo;
    if (this.prices != null) {
      data['prices'] = this.prices.map((v) => v.toJson()).toList();
    }
    if (this.minimum != null) {
      data['minimum'] = this.minimum.toJson();
    }
    if (this.maximum != null) {
      data['maximum'] = this.maximum.toJson();
    }
    return data;
  }
}

class Prices {
  String interval;
  String value;
  String currency;
  Customers customers;

  Prices({this.interval, this.value, this.currency, this.customers});

  Prices.fromJson(Map<String, dynamic> json) {
    interval = json['interval'];
    value = json['value'];
    currency = json['currency'];
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['interval'] = this.interval;
    data['value'] = this.value;
    data['currency'] = this.currency;
    if (this.customers != null) {
      data['customers'] = this.customers.toJson();
    }
    return data;
  }
}

class Customers {
  String rate;

  Customers({this.rate});

  Customers.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    return data;
  }
}

class Minimum {
  String value;
  String currency;

  Minimum({this.value, this.currency});

  Minimum.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['currency'] = this.currency;
    return data;
  }
}

class InterestRates {
  String referentialRateIndexer;
  String rate;
  List<Applications> applications;
  String minimumRate;
  String maximumRate;

  InterestRates(
      {this.referentialRateIndexer,
      this.rate,
      this.applications,
      this.minimumRate,
      this.maximumRate});

  InterestRates.fromJson(Map<String, dynamic> json) {
    referentialRateIndexer = json['referentialRateIndexer'];
    rate = json['rate'];
    if (json['applications'] != null) {
      applications = new List<Applications>();
      json['applications'].forEach((v) {
        applications.add(new Applications.fromJson(v));
      });
    }
    minimumRate = json['minimumRate'];
    maximumRate = json['maximumRate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['referentialRateIndexer'] = this.referentialRateIndexer;
    data['rate'] = this.rate;
    if (this.applications != null) {
      data['applications'] = this.applications.map((v) => v.toJson()).toList();
    }
    data['minimumRate'] = this.minimumRate;
    data['maximumRate'] = this.maximumRate;
    return data;
  }
}

class Applications {
  String interval;
  Customers indexer;
  Customers customers;

  Applications({this.interval, this.indexer, this.customers});

  Applications.fromJson(Map<String, dynamic> json) {
    interval = json['interval'];
    indexer = json['indexer'] != null
        ? new Customers.fromJson(json['indexer'])
        : null;
    customers = json['customers'] != null
        ? new Customers.fromJson(json['customers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['interval'] = this.interval;
    if (this.indexer != null) {
      data['indexer'] = this.indexer.toJson();
    }
    if (this.customers != null) {
      data['customers'] = this.customers.toJson();
    }
    return data;
  }
}