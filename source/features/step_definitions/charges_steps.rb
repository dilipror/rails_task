Given(/^I am on the home page$/) do
  visit "/"
end

Then(/^I should see the items "(.*?)" on the page$/) do |item|
  page.should have_content item
end

Then(/^I should see "(.*?)" charges list there are (\d+) line items$/) do |charge, number|
  css = case charge
  when "successful"
    all_rows = all('table tbody tr')
    failed_rows = all('table tr.failed').count
    dispute_rows = all('table tr.dispute').count
    heading_rows = 3
    (all_rows.count - failed_rows - dispute_rows - heading_rows).should eq number.to_i
    false
  when "failed"
   ".failed"
  when "disputed"
   ".dispute"
  else
   pending "No item is defined"
  end
  all(css).count.should eq number.to_i if css

end
