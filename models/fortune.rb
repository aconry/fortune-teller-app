#life_line_length = long / short
#life_line_start = high / mid / low
#life_line_end = high / mid / low
#life_line_shape = high / mid / low
#life_line_break = high / mid / low

#heart_line_length = long / short
#heart_line_start = high / mid / low
#heart_line_end = high / mid / low
#heart_line_shape = high / mid / low
#heart_line_break  high / mid / low

def tell_fortune (palmHash)

  my_life_fortune = tell_life_fortune(palmHash)
  my_heart_fortune = tell_heart_fortune(palmHash)

  my_fortune = my_life_fortune + my_heart_fortune
  return my_fortune  
  
end


def tell_life_fortune (palmHash)
  
  life_fortune = ""
  
  if palmHash[:life_line_length] == "long"
    life_fortune += "A long, strong life line indicates that you have a good state of physical vitality.  The longer your line the greater your vitality. This is also a sign of your strong ancestoral inheritence. "
  elsif  palmHash[:life_line_length] == "short"
    life_fortune += "A short life line indicates that your vitality and life source may be limited.  Don't worry. This is not a statement about the length of your life span. "
  else
    life_fortune
  end

  if palmHash[:life_line_start] == "high"
    life_fortune += "A high life line shows that you have a strong personality. This means that you can be opionated. "
  elsif palmHash[:life_line_start] == "mid"
    life_fortune += "A medium life line indicates that you have a medium temper. "    
  elsif palmHash[:life_line_start] == "low"
    life_fortune += "A low life line suggests that you may be a loner. "
  else
    life_fortune
  end
  
  if palmHash[:life_line_end] == "high"
    life_fortune += "A high end point suggests that you have a strong love for travel and adventure. "
  elsif  palmHash[:life_line_end] == "mid"
    life_fortune += "A mid end point suggests that you are traveler that likes to return. "    
  elsif  palmHash[:life_line_end] == "low"
    life_fortune += "A low end point shows that you have a strong attachment to life at home. "
  else
    life_fortune
  end
  
  if palmHash[:life_line_shape] == "high"
    life_fortune += "Your life line shape shows that strong objectivity and judgement. "
  elsif palmHash[:life_line_shape] == "mid"
    life_fortune += "A long and narrow life line shows that you may have a nervous nature. "    
  elsif palmHash[:life_line_shape] == "low"
    life_fortune += "An uncertain life line indicates low energy and/or weakness. "
  else
    life_fortune
  end

  if palmHash[:life_line_break] == "yes"
    life_fortune += "Breaks in your life line show serious illness or accidents in your pass.  They can also point to change or interruption in your future."
  else
    life_fortune
  end
  
  if life_fortune == ""
    life_fortune = "You may have a long and happy life to live, but you have no palm."
  end
  puts life_fortune
  return life_fortune

end


def tell_heart_fortune (palmHash)
  heart_fortune = ""
  
  if palmHash[:heart_line_length] == "long"
    heart_fortune+= "Your heart line shows that you value harmony and affect. "
  elsif palmHash[:heart_line_length] == "short"
    heart_fortune+= "Your heart line suggests that your are often at the center of your love. Loving another person and putting another's heart before yours can be a struggle for you. "
  else
    heart_fortune
  end

  if palmHash[:heart_line_start] == "high"
    heart_fortune+= "Your heart line starts high, which suggests that you have the tendency to be excessively emotional or have poor self-control with your mood. "
  elsif  palmHash[:heart_line_start] == "low"
    heart_fortune+= "Your heart line starts low, which suggests that you are often in control of your emotions. You tend ot be cool, prudent, and careful with your heart. "
  else
    heart_fortune
  end
  
  if palmHash[:heart_line_end] == "high"
    heart_fortune+= "You have an outgoing nature, and you have little difficult in expressing what your heart tells you. "
  elsif  palmHash[:heart_line_end] == "low"
    heart_fortune+= "Your heart line shows that you tend to be idealistic about love. Your idealism often leads you to be reserved in how you express emotions. "
  else
    heart_fortune
  end
  
  
  if palmHash[:heart_line_shape] == "curve"
    heart_fortune+= "The curve in your heart line signifies sensitivity. "
  elsif palmHash[:heart_line_shape] == "straight"
    heart_fortune+= "Your heart line is straight, which means that you often prefer to satisfy psychic needs over physical needs. "
  else
    heart_fortune
  end
  
  if palmHash[:heart_line_shapes]=="para"
    heart_fortune+= "Parallel heart lines show a wide emotional range. You are lively and animated, and your heart is often full."
  elsif palmHash[:heart_line_shapes]=="wave"
    heart_fortune+= "A wavy heart line indicates unpredictability. You often follow the changes of your heart and refuse to stay fixed or constant."
  else
    heart_fortune
  end
 
  if heart_fortune == ""
    heart_fortune = "You may have a life of love and happiness, but you have no palm."
  end
  puts heart_fortune
  return heart_fortune
  
end
