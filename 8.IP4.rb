# Instructions:

# Implement String#ipv4_address?, which should return true if given object is an
# IPv4 address - four numbers (0-255) separated by dots.
# It should only accept addresses in canonical representation, so no leading 0s,
# spaces etc.

class String
  def ipv4_address?
    /\A(([1-9]?\d|1\d\d|2[0-4]\d|25[0-5])(\.(?!$)|$)){4}\z/ === self
  end
end
