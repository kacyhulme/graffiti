require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Graffiti Gallery Order Confirmation", mail.subject
    assert_equal ["kacyhulme@gmail.com"], mail.to
    assert_equal ["kacy@kacyhulme.com"], mail.from
    assert_match /1 x First Photo/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Graffiti Gallery Order Shipped", mail.subject
    assert_equal ["kacyhulme@gmail.com"], mail.to
    assert_equal ["kacy@kacyhulme.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>First Photo<\/td>/, mail.body.encoded  
  end

end
