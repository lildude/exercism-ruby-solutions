class PhoneNumber
  def self.clean num
    num.gsub!(/[^\d]/, '')
    return nil if num.length < 10
    return nil if num.length > 10 && num[0] != "1"
    num.gsub!(/^1/, '') if num.length == 11
    return nil if num[0].to_i < 2 || num[3].to_i < 2
    num
  end
end

module BookKeeping
  VERSION = 2
end
