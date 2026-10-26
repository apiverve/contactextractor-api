/// Response models for the Contact Extractor API.

/// API Response wrapper.
class ContactextractorResponse {
  final String status;
  final dynamic error;
  final ContactextractorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ContactextractorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ContactextractorResponse.fromJson(Map<String, dynamic> json) => ContactextractorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ContactextractorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Contact Extractor API.

class ContactextractorData {
  String? url;
  List<String>? emails;
  List<dynamic>? phones;
  List<String>? places;
  num? emailCount;
  num? phoneCount;
  num? placeCount;
  List<String>? uniqueDomains;

  ContactextractorData({
    this.url,
    this.emails,
    this.phones,
    this.places,
    this.emailCount,
    this.phoneCount,
    this.placeCount,
    this.uniqueDomains,
  });

  factory ContactextractorData.fromJson(Map<String, dynamic> json) => ContactextractorData(
      url: json['url'],
      emails: (json['emails'] as List?)?.cast<String>(),
      phones: (json['phones'] as List?)?.cast<dynamic>(),
      places: (json['places'] as List?)?.cast<String>(),
      emailCount: json['emailCount'],
      phoneCount: json['phoneCount'],
      placeCount: json['placeCount'],
      uniqueDomains: (json['uniqueDomains'] as List?)?.cast<String>(),
    );
}

class ContactextractorRequest {
  String url;
  num? limit;

  ContactextractorRequest({
    required this.url,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      'url': url,
      if (limit != null) 'limit': limit,
    };
}
