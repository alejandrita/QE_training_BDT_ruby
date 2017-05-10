Given(/^I have \$(100|250) in my account$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter (\d*) zip code in my profile$/) do |zip_code|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter "([a-z]*)" username in my profile$/) do |username|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter "(\D*)" country in my profile$/) do |country|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a board like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @board = table.raw #[["", "1", "2", "3"], ["1", "", "", ""], ["2", "", "", ""], ["3", "", "", ""]]
end

When(/^player (\w+) plays in row (\d+), column (\d+)$/) do |player, row, column|
  row, column =  row.to_i, column.to_i
  @board[row][column]=player
end

Then(/^the board should look like this:$/) do |expected_table|
	expected_table.diff!(@board)
end

Given(/^a To Do list board like this:$/) do |table|
  @to_do_board =  table.hashes
  p @to_do_board
end

When(/^I put "([^"]*)" in progress$/) do |activity|
end

Then(/^the To Do list board should look like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I put "([^"]*)" in done$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^I have \$(\d+) in my account$/) do |total_amount|
  @total_amount = total_amount.to_i
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw_amount|
  @withdraw_amount = withdraw_amount.to_i
end

Then(/^I should receive \$(\d+) cash$/) do |cash_amount|
  puts "This is your $#{cash_amount}"
  @cash_amount =  cash_amount.to_i
end

Then(/^the balance of my account should be \$(\d+)$/) do |balance_amount|
  @balance_amount = @total_amount - @cash_amount
  expect(balance_amount.to_i).to eql(@balance_amount)
end