# Contact Extractor API - Ruby Gem

Contact Extractor scrapes public email addresses, phone numbers, and physical addresses from any web page URL. It tallies the findings and returns unique records found on the page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_contactextractor'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_contactextractor
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_contactextractor'

# Initialize the client
client = APIVerve::Contactextractor::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  url: "https://en.wikipedia.org/wiki/Email_address",
  limit: -1
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ url: "https://en.wikipedia.org/wiki/Email_address", limit: -1 })
  puts response["data"]
rescue APIVerve::Contactextractor::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Contactextractor::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Contactextractor::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/contactextractor?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/contactextractor?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/contactextractor?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
