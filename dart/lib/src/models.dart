/// Response models for the Contact Extractor API.

/// API Response wrapper.
class ContactextractorResponse {
  final String status;
  final dynamic error;
  final ContactextractorData? data;

  ContactextractorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ContactextractorResponse.fromJson(Map<String, dynamic> json) => ContactextractorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ContactextractorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Contact Extractor API.

class ContactextractorData {
  String? url;
  List<String>? emails;
  List<dynamic>? phones;
  List<String>? places;

  ContactextractorData({
    this.url,
    this.emails,
    this.phones,
    this.places,
  });

  factory ContactextractorData.fromJson(Map<String, dynamic> json) => ContactextractorData(
      url: json['url'],
      emails: (json['emails'] as List?)?.cast<String>(),
      phones: (json['phones'] as List?)?.cast<dynamic>(),
      places: (json['places'] as List?)?.cast<String>(),
    );
}

class ContactextractorRequest {
  String url;

  ContactextractorRequest({
    required this.url,
  });

  Map<String, dynamic> toJson() => {
      'url': url,
    };
}
