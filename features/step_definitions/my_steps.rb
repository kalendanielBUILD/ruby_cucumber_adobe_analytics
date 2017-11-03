Given (/^I visit "([^"]*)"$/) do |arg|
    visit(arg)
  end

    And (/^I reload the page a couple times to close the pop\-ups$/) do
      visit(current_url)
      visit(current_url)
      sleep 15
      page.save_screenshot('screenshot.png')
      print page.html
    end

    Then (/^I should see the following page elements in the data layer$/) do |table|
      table.hashes.each do |row|
        value = execute_script("return dataLayer.#{row['data_element']};")
        puts "| #{row['data_element']} | #{value.class}  | #{value}  |"
        expect(value.class.to_s).to eql(row['data_type'])
      end
    end

    But (/^more importantly these elements should return expected values$/) do |table|
      table.hashes.each do |row|
        value = execute_script("return dataLayer.#{row['data_element']};")
        expect(value.to_s).to include(row['data_value'])
      end
    end

Given (/^I then visit "([^"]*)"$/) do |arg|
    visit(arg)
  end

    And (/^I reload the next page a couple times to close the pop\-ups$/) do
      visit(current_url)
      visit(current_url)
      sleep 5
      page.save_screenshot('screenshot1.png')
      print page.html
    end

    Then (/^I should see the new following page elements in the data layer$/) do |table|
      table.hashes.each do |row|
      value = execute_script("return dataLayer.#{row['data_element']};")
      puts "| #{row['data_element']} | #{value.class}  | #{value}  |"
     expect(value.class.to_s).to eql(row['data_type'])
    end
  end

    But (/^more importantly these new page elements should return expected values$/) do |table|
      table.hashes.each do |row|
      value = execute_script("return dataLayer.#{row['data_element']};")
      expect(value.to_s).to include(row['data_value'])
      end
    end








