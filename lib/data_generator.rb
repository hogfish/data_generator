class DataGenerator
  def special_characters
    #output = %{!$@£%&*()_+=^-±§€#\}\{][|:\;/.,?><"}
    #output = %{!$@£*(%)_+=^}
    output = %{!$@}
    #output = %{-±§€&#\}\{][|:\;/.,?><"}
  end
  
  def random_words(number_of_words)
    dict = File.open('lib/web2')
    lines = dict.readlines
    words = []
    (1..number_of_words.to_i).each do |word|
      words << lines[rand(lines.size)].rstrip.capitalize
    end
    words.join(" ")
  end
  
  def random_email(base_email_address)
    if !base_email_address.match /[a-zA-Z\._]+@[a-zA-Z\.]+\.[a-zA-Z\.]+/
      raise ArgumentError "Email address is in an invalid format"
    end
    dict = File.open('lib/web2')
    lines = dict.readlines
    email_input = base_email_address.split("@")
    email_input.first + "+" + lines[rand(lines.size)].rstrip + "@" + email_input.last
  end
  
end
