require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :comment }
    it { is_expected.to have_db_column :article_id }
  end

  describe 'Factory' do
    it 'should be valid' do
      FactoryGirl.create(:article)
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end
end




