# Ruby Programs - s1j2 Exercises

A collection of Ruby exercises implementing common algorithms: Caesar cipher encryption and multiple number operations.

## Features

### Caesar Cipher
Encrypts and rotates text using the classic Caesar cipher algorithm. The cipher:
- Shifts letters by a specified key
- Preserves case (uppercase/lowercase)
- Leaves non-alphabetic characters unchanged (spaces, punctuation, numbers)

### Multiples Finder
Calculates the sum of all numbers that are multiples of 3 or 5 up to a given limit.

## Project Structure

```
ruby_programs/
├── Gemfile              # Ruby dependencies
├── README.md            # This file
├── test_multiples.rb    # Manual test script
├── lib/
│   ├── caesar_cipher.rb # Caesar cipher implementation
│   └── multiples.rb     # Multiples calculation implementation
└── spec/
    ├── spec_helper.rb   # Test configuration
    ├── caesar_cipher_spec.rb # Caesar cipher tests
    └── multiples_spec.rb     # Multiples tests
```

## Installation

1. Clone or download this repository
2. Navigate to the `ruby_programs` directory
3. Install dependencies:
   ```bash
   bundle install
   ```

## Usage

### Caesar Cipher

```ruby
require_relative 'lib/caesar_cipher'

# Encrypt text with a key
result = caesar_cipher("Hello World", 3)
puts result  # => "Khoor Zruog"

# Works with various shifts
result = caesar_cipher("Ruby", 5)
puts result  # => "Wdgc"
```

### Multiples

```ruby
require_relative 'lib/multiples'

# Sum all multiples of 3 or 5 below 10
result = sum_of_3_or_5_multiples(10)
puts result  # => 23 (3 + 5 + 6 + 9)
```

## Testing

Run the test suite with:

```bash
rspec
```

Or run tests for a specific file:

```bash
rspec spec/caesar_cipher_spec.rb
rspec spec/multiples_spec.rb
```

## License

Educational project.
