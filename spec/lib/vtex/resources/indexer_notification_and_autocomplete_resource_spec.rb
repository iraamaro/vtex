require 'spec_helper'

RSpec.describe Vtex::IndexerNotificationAndAutocompleteResource do
  subject(:resource) { described_class.new(connection: connection) }
  include_context 'resources'

  describe "#change_notification" do
    it "handles a 200" do
      stub_do_api('/api/catalog_system/pvt/skuseller/changenotification/1', :get).to_return(body: "200")

      response = resource.change_notification(product_id: 1)

      expect(response).to eq("200")
    end
  end

  describe "#indexed_info" do
    it "handles an xml string" do
      stub_do_api('/api/catalog_system/pvt/products/GetIndexedInfo/2000005', :get).to_return(body: api_fixture('indexer_notification_and_autocomplete/indexed_info'))
      response = resource.indexed_info()
      expect(response).to be_kind_of(String)
    end
  end
end

