
def grep (file, xxx)
  File.open(file,"r") do |f|
    while line=f.gets
      puts line if line =~ xxx
    end
  end
end

grep("test.txt",/(.*)aa(.*)/)
