class Bob
  def self.hey text
    return "Whoa, chill out!" if text.upcase!.nil? && text.match('[A-Z]+')
    return "Sure." if text.end_with? "?"
    return "Fine. Be that way!" if text.strip == ''
    "Whatever."
  end
end
