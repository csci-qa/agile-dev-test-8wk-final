Before do
  @browser = Watir::Browser.new
end

After do
  sleep 3
  @browser.close
end