require 'rails_helper'

RSpec.describe User, type: :model do

  describe "valid?" do
    it "is invalid without a name" do
      user = build(:user, name: nil)

      expect(user.valid?).to eq false
    end

    it "is valid with a name" do
      user = build(:user)

      expect(user.valid?).to eq true
    end

    # it "is invalid with less than 18 years old" do
    #   user = build(:user, age: 15)

    #   expect(user.valid?).to eq false
    # end

    it "is valid with more than 18 years old" do
      user = build(:user)

      expect(user.valid?).to eq true
    end

    # it "is invalid without a unique email" do
    #   user1 = create(:user, email:"random@email.com")
    #   user2 = create(:user, email:"random@email.com")

    #   expect(user2.valid?).to eq false
    # end

    it "is valid with a unique email" do
      user = build(:user)

      expect(user.valid?).to eq true
    end
  end

end
