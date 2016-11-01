require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "penny_b", email_address: "penelope_99@example.com", password: "789b_by789", password_confirmation: "789b_by789")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.username = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email_address = "     "
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = @user.password_confirmation = "     "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email_address = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "password should not be too short" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "password should not be too long" do
    @user.password = @user.password_confirmation = "a" * 21
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email_address = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
      # An optional second argument is included with a custom error message, which in this case identifies the address causing the test to fail.
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                         foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email_address = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "username should be unique" do
    duplicate_user = @user.dup
    duplicate_user.username = @user.username.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email_address = @user.email_address.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email should be saved as lower case" do
    mixed_case_email = "PeneLope_B@ExaMPle.cOM"
    @user.email_address = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email_address
  end

end
