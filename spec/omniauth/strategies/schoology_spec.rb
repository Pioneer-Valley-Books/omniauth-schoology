require 'spec_helper'

RSpec.describe OmniAuth::Strategies::Schoology do
  let(:access_token) { double('AccessToken', options: {}) }
  let(:base_url) { 'https://api.schoology.com/v1' }
  let(:auth_url) { 'https://www.schoology.com/oauth/authorize' }
  let(:token_url) { 'https://api.schoology.com/v1/oauth/request_token' }

  subject do
    OmniAuth::Strategies::Schoology.new({})
  end

  before(:each) do
    subject.stub(:full_host).and_return('http://www.example.com')
    subject.stub(:script_name).and_return('')
    subject.stub(:access_token).and_return(access_token)
  end

  context 'version' do
    it 'should return a version' do
      expect(OmniAuth::Schoology::VERSION).to_not eq(nil)
    end
  end

  context '#provider' do
    it 'should return provider string' do
      expect(subject.provider).to eq('schoology')
    end
  end


  context 'client options' do
    it 'should return correct site url' do
      expect(subject.options.client_options.site).to eq(base_url)
    end

    it 'should return correct auth url' do
      expect(subject.options.client_options.authorize_url).to eq(auth_url)
    end

    it 'should return correct token url' do
      expect(subject.options.client_options.token_url).to eq(token_url)
    end
  end

  context 'callbacks' do
    it 'should have correct path' do
      expect(subject.callback_path).to eq('/auth/schoology/callback')
    end

    it 'should have correct callback_url' do
      expect(subject.callback_url).to eq('http://www.example.com/auth/schoology/callback')
    end
  end
end
