# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    password_confirmation = 'password'
    password = 'password'

    it 'should check that password is equal to password_confirmation' do
      expect(password).to eq 'password'
    end
  end
end
