# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  username               :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string
#  last_name              :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Model instantiation' do
    subject(:new_user) { described_class.new }

    describe 'Database' do
      it { is_expected.to have_db_column(:id).of_type(:integer) }
      it { is_expected.to have_db_column(:email).of_type(:string).with_options(unique: true, null: false, default: "") }
      it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: "") }
      it { is_expected.to have_db_column(:username).of_type(:string).with_options(unique: true, null: false, default: "" ) }
      it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
      it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    end
  end

  describe 'Validations' do
    subject(:user) { create(:user) }

    context 'when factory is valid' do
      it { expect{ user }.to change(described_class, :count).by(1) }
      it { is_expected.to be_valid }
    end

    context 'when a new user is created' do
      it { is_expected.to validate_presence_of(:username) }
    end

    context 'with indexes' do
      it { is_expected.to have_db_index(:username).unique(true) }
    end
  end
end
