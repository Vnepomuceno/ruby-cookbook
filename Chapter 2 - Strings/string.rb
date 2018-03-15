require 'resolv'

class String
  # Recipe 2.9 - Processing a String One Word at a Time
  def word_count
    frequencies = Hash.new(0)
    downcase.scan(/(\w+([-'.]\w+)*)/) do |word, ignore|
      frequencies[word] += 1
    end
    frequencies
  end

  # Recipe 2.10 - Changing the Case of a String
  def capitalize_first_letter
    self[0].capitalize + self[1, size]
  end

  def capitalize_first_letter!
    unless self[0] == (c = self[0,1].upcase[0])
      self[0] = c
      self
    end
  end
end

# Recipe 2.14 Word-Wrapping Lines of Text
def wrap(string, width=78)
  string.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

def reformat_wrapped(string, width=78)
  lines = []
  line = ''
  string.split(/\s+/).each do |word|
    if line.size + word.size >= width
      lines << line
      line = word
    elsif line.empty?
      line = word
    else
      line << ' ' << word
    end
  end
  lines << line if line
  lines.join("\n")
end

# Recipe 2.18 Validating an Email Address
def probably_valid?(email)
  # Commonly encountered email address characters
  valid = '[A-Za-z\d.+-]+'
  (email =~ /#{valid}@#{valid}\.#{valid}/) == 0
end

def valid_email_host?(email)
  hostname = email[(email =~ /@/)+1..email.length]
  valid = true
  begin
    Resolv::DNS.new.getresource(hostname, Resolv::DNS::Resource::IN::MX)
  rescue Resolv::ResolvError
    valid = false
  end
    return valid
end