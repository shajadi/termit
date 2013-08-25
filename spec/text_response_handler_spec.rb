require 'spec_helper'

describe Termislator::TextResponseHandler do
  describe "call method" do
    let(:handler) do
      response_body = File.open('spec/fixtures/text_response').read
      Termislator::TextResponseHandler.new(response_body)
    end

    it "extracts data from HTTP response body" do
      expect(handler.call).to eq('Twoja matka')
    end
  end
end

