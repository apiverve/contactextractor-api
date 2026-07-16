# Contact Extractor API - PHP Package

Contact Extractor is a simple tool for extracting contact data from a website URL. It returns the contact emails, phone numbers, and places.

## Installation

Install via Composer:

```bash
composer require apiverve/contactextractor
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Contactextractor\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'url' => 'https://en.wikipedia.org/wiki/Email_address',
    'limit' => -1
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Contactextractor\Client;
use APIVerve\Contactextractor\Exceptions\APIException;
use APIVerve\Contactextractor\Exceptions\ValidationException;

try {
    $response = $client->execute(['url' => 'https://en.wikipedia.org/wiki/Email_address', 'limit' => -1]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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
    ],
    "emailCount": 27,
    "phoneCount": 0,
    "placeCount": 5,
    "uniqueDomains": [
      "example.com",
      "example.org",
      "s.example",
      "EasierReading.org",
      "pobox.com"
    ]
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/contactextractor?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/contactextractor?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/contactextractor?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
