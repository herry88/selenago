class Product {
	List<Data> data;
	int total;
	int page;
	int size;
	int code;

	Product.fromJson(Map<String, dynamic> json) {
		if (json['data'] != null) {
			data = new List<Data>();
			json['data'].forEach((v) { data.add(new Data.fromJson(v)); });
		}
		total = json['total'];
		page = json['page'];
		size = json['size'];
		code = json['code'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
		data['total'] = this.total;
		data['page'] = this.page;
		data['size'] = this.size;
		data['code'] = this.code;
		return data;
	}
}

class Data {
	int id;
	String name;
	String description;
  int price;
	MainImage mainImage;
	String date;
	String slug;

	Data({this.id, this.name, this.description, this.mainImage, this.date, this.slug});

	Data.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		description = json['description'];
    price = json['price'];
		mainImage = json['main_image'] != null ? new MainImage.fromJson(json['main_image']) : null;
		date = json['date'];
		slug = json['slug'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['description'] = this.description;
    data['price'] = this.price;
		if (this.mainImage != null) {
      data['main_image'] = this.mainImage.toJson();
    }
		data['date'] = this.date;
		data['slug'] = this.slug;
		return data;
	}
}

class MainImage {
	String url;
	bool urlDefault;

	MainImage({this.url, this.urlDefault});

	MainImage.fromJson(Map<String, dynamic> json) {
		url = json['url'];
    urlDefault = json['default'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['url'] = this.url;
		data['default'] = this.urlDefault;
		return data;
	}
}