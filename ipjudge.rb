@judge=false
def judgeip(ip)
	
	array=ip.split('.')
	if array.size!=4 
		return @judge
	end
	
	array.each do |p|
		if p.to_i<0 || p.to_i>255
			return @judge
		end
	end
	@judge=true
	return @judge
end

ip = ARGV[0]
puts judgeip(ip)
