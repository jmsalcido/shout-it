# frozen_string_literal: true

RSpec.describe HelloController do
  def app
    HelloController
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello world!')
  end
end
