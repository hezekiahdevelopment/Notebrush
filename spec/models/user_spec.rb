require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }

  it { should_not allow_value('blah').for(:email) }
  it { should allow_value('bigballscaptain@testicles.me').for(:email) }

  it { should have_many(:inverse_friendships).dependent(:destroy).class_name("Friendship").with_foreign_key("friend_id") }

  it { should have_many(:posts).dependent(:destroy) }
  it { should have_many(:friendships).dependent(:destroy) }

  it { should respond_to(:bio) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }

  describe "validation of password" do
    subject { User.new }
    it { should validate_presence_of(:password) }
  end

  describe 'valid Model' do
    it 'should be an instance of User Model' do
      expect(user).to be_an_instance_of(User)
    end

    it 'should have a password length btwn 6..40' do
      expect(user.password.length).to be > 6
      expect(user.password.length).to be < 40
    end

    it 'should validate_uniqueness_of email' do
      faked_password = Faker::Internet.password
      expect {
        create(:user, email: user.email, password: faked_password,
         password_confirmation: faked_password)
        }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe '#pending_friend_requests_from' do
  end

  describe '#pending_friend_requests_to' do
  end

  describe '#request_friendship(user_2)' do
  end

  describe '#friendship_relation(user_2)' do
  end

  describe '#friendship_status(user_2)' do
  end

  describe '#active_friends' do
  end

end
