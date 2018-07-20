
def quiz(yn, yn2, yn3, yn4, yn5, yn6)
  answers = [yn, yn2, yn3, yn4, yn5, yn6]
  count=0
  answers.each do |answer|
    if answer == "yes"
      count+=1 
    end
  end
  if count <= 2 
    "HUGE! Earth's resources are quickly depleting..."
  elsif count <=4 
    "average, but you can always be more green."
  elsif count >= 5 
    "small! Go you! But you can never be TOO environmentally friendly!"
  end 
end

puts quiz("yes", "no", "yes", "no", "yes", "yes")
