require 'rails_helper'

RSpec.describe User, type: :model do
  let(:_post) { create(:post) }

  it { should belong_to(:user) }

  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:content) }

  describe 'valid Model' do
    it 'should be an instance of Post Model' do
      expect(_post).to be_an_instance_of(Post)
    end
  end

end
