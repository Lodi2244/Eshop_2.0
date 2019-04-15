# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  description :text             not null
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#  category_id :bigint(8)
#

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'Model instantiation' do
    subject(:new_item) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:id).of_type(:integer) }
      it { is_expected.to have_db_column(:title).of_type(:string) }
      it { is_expected.to have_db_column(:description).of_type(:text) }
      it { is_expected.to have_db_column(:price).of_type(:float).with_options(null: false) }
      it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    end
  end

  describe 'Validations' do
    subject(:item) { create(:item) }

    context 'when factory is valid' do
      it { expect{ item }.to change(described_class, :count).by(1) }
      it { is_expected.to be_valid }
    end

    context 'when an item is created' do
      subject(:item) { create(:item) }

      it { expect(item).to validate_presence_of(:title).with_message("Le titre doit être renseigné.") }
      it { expect(item).to validate_presence_of(:price).with_message("Le prix doit être renseigné.") }
      it { expect(item).to validate_presence_of(:description).with_message("La description doit être renseignée.") }
      it { expect(item).to validate_numericality_of(:price) }
      it {
        expect(item).to validate_length_of(:description).
          is_at_most(100)
      }
    end
  end
end
