# == Schema Information
#
# Table name: users
#
# id :integer not null, primary key
# name :string(255)
# email :string(255)
# created_at :datetime
# updated_at :datetime
#
require 'rails_helper'
RSpec.describe User, :type => :model do
  before(:each) do
    role = Role.create()
    @attr = {
        :username => "Example User",
        :email => "charles@schulzkowski.com",
        :password => "12345678",
        :password_confirmation => "12345678"
    }
  end
  it "should create a new instance given valid attributes" do
    user = User.new(@attr)
  end
  it "should require a name" do
    no_name_user = User.new(@attr.merge(:username => ''))
    expect(no_name_user).to_not be_valid
  end
  it "should reject names that are longer than 25 chars" do
    long_name = "a" * 26
    long_name_user = User.new(@attr.merge(:username => long_name))
    expect(long_name_user).to_not be_valid
  end
  it "should require an email" do
    no_email_user = User.new(@attr.merge(:email => ''))
    expect(no_email_user).to_not be_valid
  end
  it "should accept valid email addresses" do
    invalid_email_user = User.new(@attr.merge(:email => 'charles@schulzkowski.'))
    expect(invalid_email_user).to_not be_valid
  end

  describe "password validations" do
    it "should require a password" do
      user_without_password = User.new(@attr.merge(:password => "", :password_confirmation => ""))
      expect(user_without_password).to_not be_valid
    end
    it "should require a matching password confirmation" do
      user_with_failing_confirmation = User.new(@attr.merge(:password_confirmation => "invalid"))
      expect(user_with_failing_confirmation).to_not be_valid
    end
    it "should not accept short password" do
      short = "a" * 7
      user_with_short_pass = User.new(@attr.merge(:password => short, :password_confirmation => short))
      expect(user_with_short_pass).to_not be_valid
    end
  end
end
