# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is database authenticable' do
    user = User.create(
      email: 'ian@omondi.com',
      password: 'ola.ole',
      password_confirmation: 'ola.ole'
    )
    expect(user.valid_password?('ola.ole')).to be_truthy
  end
end
