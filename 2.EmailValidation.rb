
# Email addresses are notoriously difficult to validate.
# Create a method that takes an email and returns true if valid, false otherwise.
# Tip: It doesn't have to be perfect.
# For example:
# validate('joe@example.com') => true
# validate('joe') => false


def validate(email)
  /^.+@.+\..+$/ === email
end

# Alternative solution
def validate(email)
  email =~ /^.*@.*.[.]...$/ ? true : false
end