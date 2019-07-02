class DetailProduct {
	Data data;
	int code;

	DetailProduct({this.data, this.code});

	DetailProduct.fromJson(Map<String, dynamic> json) {
		data = json['data'] != null ? new Data.fromJson(json['data']) : null;
		code = json['code'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.data != null) {
      data['data'] = this.data.toJson();
    }
		data['code'] = this.code;
		return data;
	}
}

class Data {
	int id;
	String name;
	String description;
	Category category;
	Host host;
	String notes;
	String slug;
	String address;
	String detailAddress;
	double latitude;
	double longitude;
	List<Slides> slides;
	MainImage mainImage;
	int basePrice;
	int price;
	List<ScheduleList> scheduleList;
	Null rating;
	String createdAt;
	String updatedAt;

	Data({this.id, this.name, this.description, this.category, this.host, this.notes, this.slug, this.address, this.detailAddress, this.latitude, this.longitude, this.slides, this.mainImage, this.basePrice, this.price, this.scheduleList, this.rating, this.createdAt, this.updatedAt});

	Data.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		description = json['description'];
		category = json['category'] != null ? new Category.fromJson(json['category']) : null;
		host = json['host'] != null ? new Host.fromJson(json['host']) : null;
		notes = json['notes'];
		slug = json['slug'];
		address = json['address'];
		detailAddress = json['detail_address'];
		latitude = json['latitude'];
		longitude = json['longitude'];
		if (json['slides'] != null) {
			slides = new List<Slides>();
			json['slides'].forEach((v) { slides.add(new Slides.fromJson(v)); });
		}
		mainImage = json['main_image'] != null ? new MainImage.fromJson(json['main_image']) : null;
		basePrice = json['base_price'];
		price = json['price'];
		if (json['schedule_list'] != null) {
			scheduleList = new List<ScheduleList>();
			json['schedule_list'].forEach((v) { scheduleList.add(new ScheduleList.fromJson(v)); });
		}
		rating = json['rating'];
		createdAt = json['created_at'];
		updatedAt = json['updated_at'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['description'] = this.description;
		if (this.category != null) {
      data['category'] = this.category.toJson();
    }
		if (this.host != null) {
      data['host'] = this.host.toJson();
    }
		data['notes'] = this.notes;
		data['slug'] = this.slug;
		data['address'] = this.address;
		data['detail_address'] = this.detailAddress;
		data['latitude'] = this.latitude;
		data['longitude'] = this.longitude;
		if (this.slides != null) {
      data['slides'] = this.slides.map((v) => v.toJson()).toList();
    }
		if (this.mainImage != null) {
      data['main_image'] = this.mainImage.toJson();
    }
		data['base_price'] = this.basePrice;
		data['price'] = this.price;
		if (this.scheduleList != null) {
      data['schedule_list'] = this.scheduleList.map((v) => v.toJson()).toList();
    }
		data['rating'] = this.rating;
		data['created_at'] = this.createdAt;
		data['updated_at'] = this.updatedAt;
		return data;
	}
}

class Category {
	int id;
	String name;
	String slug;
	String createdAt;
	String updatedAt;

	Category({this.id, this.name, this.slug, this.createdAt, this.updatedAt});

	Category.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		slug = json['slug'];
		createdAt = json['created_at'];
		updatedAt = json['updated_at'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['slug'] = this.slug;
		data['created_at'] = this.createdAt;
		data['updated_at'] = this.updatedAt;
		return data;
	}
}

class Host {
	String name;
	String description;
	String slug;
	String address;
	String avatarUrl;
	String createdAt;
	String updatedAt;

	Host({this.name, this.description, this.slug, this.address, this.avatarUrl, this.createdAt, this.updatedAt});

	Host.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		description = json['description'];
		slug = json['slug'];
		address = json['address'];
		avatarUrl = json['avatar_url'];
		createdAt = json['created_at'];
		updatedAt = json['updated_at'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['description'] = this.description;
		data['slug'] = this.slug;
		data['address'] = this.address;
		data['avatar_url'] = this.avatarUrl;
		data['created_at'] = this.createdAt;
		data['updated_at'] = this.updatedAt;
		return data;
	}
}

class Slides {
	int id;
	bool slideDefault;
	String original;
	String large;
	String medium;
	String small;
	String thumbnail;

	Slides({this.id, this.slideDefault, this.original, this.large, this.medium, this.small, this.thumbnail});

	Slides.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		slideDefault = json['default'];
		original = json['original'];
		large = json['large'];
		medium = json['medium'];
		small = json['small'];
		thumbnail = json['thumbnail'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['default'] = this.slideDefault;
		data['original'] = this.original;
		data['large'] = this.large;
		data['medium'] = this.medium;
		data['small'] = this.small;
		data['thumbnail'] = this.thumbnail;
		return data;
	}
}

class MainImage {
	int id;
	bool imgDefault;
	String original;
	String large;
	String medium;
	String small;
	String thumbnail;

	MainImage({this.id, this.imgDefault, this.original, this.large, this.medium, this.small, this.thumbnail});

	MainImage.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		imgDefault = json['default'];
		original = json['original'];
		large = json['large'];
		medium = json['medium'];
		small = json['small'];
		thumbnail = json['thumbnail'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['default'] = this.imgDefault;
		data['original'] = this.original;
		data['large'] = this.large;
		data['medium'] = this.medium;
		data['small'] = this.small;
		data['thumbnail'] = this.thumbnail;
		return data;
	}
}

class ScheduleList {
	int checkoutId;
	int activityId;
	String activityDate;
	String time;
	String duration;
	int minPax;
	int maxPax;
	List<Prices> prices;
	int remainingSeat;

	ScheduleList({this.checkoutId, this.activityId, this.activityDate, this.time, this.duration, this.minPax, this.maxPax, this.prices, this.remainingSeat});

	ScheduleList.fromJson(Map<String, dynamic> json) {
		checkoutId = json['checkout_id'];
		activityId = json['activity_id'];
		activityDate = json['activity_date'];
		time = json['time'];
		duration = json['duration'];
		minPax = json['min_pax'];
		maxPax = json['max_pax'];
		if (json['prices'] != null) {
			prices = new List<Prices>();
			json['prices'].forEach((v) { prices.add(new Prices.fromJson(v)); });
		}
		remainingSeat = json['remaining_seat'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['checkout_id'] = this.checkoutId;
		data['activity_id'] = this.activityId;
		data['activity_date'] = this.activityDate;
		data['time'] = this.time;
		data['duration'] = this.duration;
		data['min_pax'] = this.minPax;
		data['max_pax'] = this.maxPax;
		if (this.prices != null) {
      data['prices'] = this.prices.map((v) => v.toJson()).toList();
    }
		data['remaining_seat'] = this.remainingSeat;
		return data;
	}
}

class Prices {
	int id;
	int activityConfigId;
	EffectiveDate effectiveDate;
	EffectiveUntil effectiveUntil;
	int pax;
	int basePrice;
	int price;
	String promoType;
	String createdAt;
	String updatedAt;
	String deletedAt;

	Prices({this.id, this.activityConfigId, this.effectiveDate, this.effectiveUntil, this.pax, this.basePrice, this.price, this.promoType, this.createdAt, this.updatedAt, this.deletedAt});

	Prices.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		activityConfigId = json['activity_config_id'];
		effectiveDate = json['effective_date'] != null ? new EffectiveDate.fromJson(json['effective_date']) : null;
		effectiveUntil = json['effective_until'] != null ? new EffectiveUntil.fromJson(json['effective_until']) : null;
		pax = json['pax'];
		basePrice = json['base_price'];
		price = json['price'];
		promoType = json['promo_type'];
		createdAt = json['created_at'];
		updatedAt = json['updated_at'];
		deletedAt = json['deleted_at'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['activity_config_id'] = this.activityConfigId;
		if (this.effectiveDate != null) {
      data['effective_date'] = this.effectiveDate.toJson();
    }
		if (this.effectiveUntil != null) {
      data['effective_until'] = this.effectiveUntil.toJson();
    }
		data['pax'] = this.pax;
		data['base_price'] = this.basePrice;
		data['price'] = this.price;
		data['promo_type'] = this.promoType;
		data['created_at'] = this.createdAt;
		data['updated_at'] = this.updatedAt;
		data['deleted_at'] = this.deletedAt;
		return data;
	}
}

class EffectiveDate {
	String time;
	bool valid;

	EffectiveDate({this.time, this.valid});

	EffectiveDate.fromJson(Map<String, dynamic> json) {
		time = json['Time'];
		valid = json['Valid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Time'] = this.time;
		data['Valid'] = this.valid;
		return data;
	}
}

class EffectiveUntil {
	String time;
	bool valid;

	EffectiveUntil({this.time, this.valid});

	EffectiveUntil.fromJson(Map<String, dynamic> json) {
		time = json['Time'];
		valid = json['Valid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['Time'] = this.time;
		data['Valid'] = this.valid;
		return data;
	}
}