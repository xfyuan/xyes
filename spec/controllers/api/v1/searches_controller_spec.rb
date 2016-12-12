require 'rails_helper'

RSpec.describe Api::V1::SearchesController, type: :controller do
  def import *args
    StoreIndex.import! *args
  end

  before { StoreIndex.purge! }

  after { Chewy.massacre }

  describe '#index' do
    let(:seller)  { create :seller, name: 'Barca Club' }
    let(:product) { create :product, name: 'Messi is Barca for ever', seller: seller }
    let(:json)    { JSON.parse response.body }

    before do
      import seller: seller, product: product
      get :index, params: { q: 'barca' }
    end

    it { should respond_with 200 }

    it 'returns hash of result' do
      expect(json).to be_a Hash
    end

    it 'has `data` as root key' do
      expect(json).to have_key 'data'
    end

    it 'responds with searched records' do
      expect(json['data'].map { |item| item['attributes']['title'] }).to include seller.name
      expect(json['data'].map { |item| item['attributes']['title'] }).to include product.name
    end
  end
end
