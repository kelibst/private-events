require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Associations' do
    it { should belong_to(:creator) }
    it { should have_many(:invitations) }
    it { should have_many(:attendees) }
  end
end
