RSpec.describe 'The HelloWorld App' do

    def app
        HelloController
    end

    it "says hello" do
        get '/'
        expect(last_response).to be_ok
        expect(last_response.body).to eq('Hello world!')
    end
end
