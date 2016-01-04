require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
   def setup
     @user = User.new(name: "abaddon", email: "abaddon@d.com",  password: "foobar", password_confirmation: "foobar")

   end

   test "should create user" do
    assert @user.valid?
   end

   test "name should be present" do

     @user.name = " "
     assert_not @user.valid?
   end



   test "email should be present" do

    @user.email = ""
    assert_not @user.valid?

   end


   test "name should not be too long" do
     @user.name = "a"*51
     assert_not @user.valid?
   end



  test "email should not be too long" do

    @user.email= "a"*299+"@example.com"
    assert_not @user.valid?
  end


test "password should not be blank" do

@user.password=@user.password_confirmation = " " * 5
 assert_not @user.valid?

end

test "password should have a minimum length" do

@user.password=@user.password_confirmation = "q" * 5
 assert_not @user.valid?

end




end
