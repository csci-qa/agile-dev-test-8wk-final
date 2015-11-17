before do 
	@browser = Watiir::.new
end 

After do 
	@browser.close
end