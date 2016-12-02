class Bob
  def self.hey text
    if text.upcase!.nil? && text.match('[A-Z]+')
      response = "Whoa, chill out!"
    elsif text.end_with? "?"
      response = "Sure."
    elsif text.strip.empty?
      response = "Fine. Be that way!"
    else
      response = "Whatever."
    end
    response
  end

end
