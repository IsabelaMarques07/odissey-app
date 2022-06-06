import 'dart:convert';
class NasaDataModel {
  Collection? collection;

  NasaDataModel({this.collection});

  NasaDataModel.fromJson(Map<String, dynamic> json) {
    collection = json['collection'] != null
        ? new Collection.fromJson(json['collection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.collection != null) {
      data['collection'] = this.collection!.toJson();
    }
    return data;
  }
}

class Collection {
  String? version;
  String? href;
  List<Items>? items;
  Metadata? metadata;
  List<LinksCollector>? links;

  Collection({this.version, this.href, this.items, this.metadata, this.links});

  Collection.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    href = json['href'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['links'] != null) {
      links = <LinksCollector>[];
      json['links'].forEach((v) {
        links!.add(new LinksCollector.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['href'] = this.href;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    if (this.metadata != null) {
      data['metadata'] = this.metadata!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? href;
  List<Data>? data;
  List<Links>? links;

  Items({this.href, this.data, this.links});

  Items.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? center;
  String? title;
  String? nasaId;
  String? mediaType;
  String? dateCreated;
  String? description508;
  String? description;
  String? location;
  String? photographer;

  Data(
      {this.center,
      this.title,
      this.nasaId,
      this.mediaType,
      this.dateCreated,
      this.description508,
      this.description,
      this.location,
      this.photographer});

  Data.fromJson(Map<String, dynamic> json) {
    center = json['center'];
    title = json['title'];
    nasaId = json['nasa_id'];
    mediaType = json['media_type'];
    dateCreated = json['date_created'];
    description508 = json['description_508'];
    description = json['description'];
    location = json['location'];
    photographer = json['photographer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['center'] = this.center;
    data['title'] = this.title;
    data['nasa_id'] = this.nasaId;
    data['media_type'] = this.mediaType;
    data['date_created'] = this.dateCreated;
    data['description_508'] = this.description508;
    data['description'] = this.description;
    data['location'] = this.location;
    data['photographer'] = this.photographer;
    return data;
  }
}

class Links {
  String? href;
  String? rel;
  String? render;

  Links({this.href, this.rel, this.render});

  Links.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    rel = json['rel'];
    render = json['render'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    data['rel'] = this.rel;
    data['render'] = this.render;
    return data;
  }
}

class Metadata {
  int? totalHits;

  Metadata({this.totalHits});

  Metadata.fromJson(Map<String, dynamic> json) {
    totalHits = json['total_hits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_hits'] = this.totalHits;
    return data;
  }
}

class LinksCollector {
  String? rel;
  String? prompt;
  String? href;

  LinksCollector({this.rel, this.prompt, this.href});

  LinksCollector.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    prompt = json['prompt'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rel'] = this.rel;
    data['prompt'] = this.prompt;
    data['href'] = this.href;
    return data;
  }
}
