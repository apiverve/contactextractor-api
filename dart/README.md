# Contact Extractor API - Dart/Flutter Client

Contact Extractor is a simple tool for extracting contact data from a website URL. It returns the contact emails, phone numbers, and places.

[![pub package](https://img.shields.io/pub/v/apiverve_contactextractor.svg)](https://pub.dev/packages/apiverve_contactextractor)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Contact Extractor API](https://apiverve.com/marketplace/contactextractor?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_contactextractor: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_contactextractor/apiverve_contactextractor.dart';

void main() async {
  final client = ContactextractorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'url': 'https://en.wikipedia.org/wiki/Email_address'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "url": "https://en.wikipedia.org/wiki/Email_address",
    "emails": [
      "john.smith@example.com",
      "jsmith@example.com",
      "john.smith@example.org",
      "John..Doe@example.com",
      "johns@example.com",
      "JohnS@example.com",
      "tag@example.com",
      "joeuser@example.com",
      "simple@example.com",
      "very.common@example.com",
      "FirstName.LastName@EasierReading.org",
      "x@example.com",
      "long.email-address-with-hyphens@and.subdomains.example.com",
      "sorting@example.com",
      "user.name@example.com",
      "surname@example.com",
      "example@s.example",
      "username@example.org",
      "example.com@example.org",
      "user@example.com",
      "user-@example.org",
      "CHOCOLATE@example.com",
      "c@example.com",
      "l@example.com",
      "right@example.com",
      "allowed@example.com",
      "onore@example.com",
      "extension@pobox.com"
    ],
    "phones": [],
    "places": [
      "China",
      "Japan",
      "Russia",
      "Rajasthan",
      "India"
    ]
  }
}
```

## API Reference

- **API Home:** [Contact Extractor API](https://apiverve.com/marketplace/contactextractor?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/contactextractor](https://docs.apiverve.com/ref/contactextractor?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
