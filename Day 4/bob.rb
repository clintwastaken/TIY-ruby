class Bob

  def initialize
    @response = ['Whatever.', 'Whoa, chill out!', 'Sure.', 'Fine. Be that way!']
  end

  def hey(remark)
    @remark = remark
    #remark = 'Whatever.'



    if @remark.start_with?('1') && @remark.end_with?('!')
      return @response[1]
    end

    if @remark.start_with? '4'
      return @response[2]
    end

    if @remark.start_with? '1'
      return @response[0]
    end

    if @remark.end_with? '.'
      #remark[-1] == '.'
      return @response[0]
    end

    if @remark.upcase != @remark && @remark.end_with?('!')
      return @response[0]
    end

    if @remark == ''
      return @response[3]
    end

    if @remark.start_with? ' '
      return @response[3]
    end

    if @remark.start_with?("\t")
      return @response[3]
    end

    if @remark.upcase == @remark
      return @response[1]
    end

    if @remark.end_with? '?'
      return @response[2]
    end

    if @remark.include?("\n")
      return @response[0]
    end


  end

end

