class EmailValidator
  def is_valid?(email)
    uppercase = ('A'..'Z')
    if email.match?('[a-z0-9]+[_a-z0-9\.-][a-z0-9]+@[a-z0-9-]+(\.[a-z0-9-]+)(\.[a-z]{2,4})')
      if (!email.each_char.any?{ |char| uppercase.cover?(char) })
        if (!email.start_with?('.') && !email.end_with?('.'))
          return true
        end
      end 
    end
    return false
  end
end