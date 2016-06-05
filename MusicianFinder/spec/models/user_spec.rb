require 'rails_helper'

describe User do

  context 'validations' do
   it { should validate_presence_of :email }
   it { should validate_presence_of :password }
   it { should validate_confirmation_of :password }
   it { should validate_uniqueness_of(:email).case_insensitive }
 end

 context 'associations' do
   it { should have_many(:comments)}
 end

context 'name' do
 it "is named Preben"
 user = User.new
 user.name.should == 'Preben'
 end
end
