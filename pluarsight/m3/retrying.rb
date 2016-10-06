def batten_hatches1
  hatch_lsit = API.request("/hatches")
end


#verbose retry by looping
def batten_hatches2
  1.upto(3) do |attemp|
    begin
      hatch_list = API.request("/hatches")
      break
    rescue RuntimeError => e
      puts e.message
      if attemp==3
        puts "Request failed"
        raise
      end
    end
  end
end

#using retry keyword
def batten_hatches3
  hatch_list = API.request("/hatches")
rescue RuntimeError=>e
  attempts||=0
  attempts+=1
  if attempts<3
    puts e.message + ". Retrying request."
    #this will go back to the beginning of method and execute API.request again
    retry
  else
    puts "Request failed"
  end

end

/\w+: \d+/