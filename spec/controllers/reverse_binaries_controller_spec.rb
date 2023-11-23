require 'rails_helper'

RSpec.describe ReverseBinariesController, type: :controller do
  describe 'GET #new' do
    it 'assigns a new ReverseBinary to @reverse_binary' do
      get :new
      expect(assigns(:reverse_binary)).to be_a_new(ReverseBinary)
    end

    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      it 'creates a new ReverseBinary' do
        expect {
          post :create, params: { reverse_binary: { number: 101 } }
        }.to change(ReverseBinary, :count).by(1)
      end

      it 'redirects to the created reverse_binary' do
        post :create, params: { reverse_binary: { number: 101 } }
        expect(response).to redirect_to(ReverseBinary.last)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new ReverseBinary' do
        expect {
          post :create, params: { reverse_binary: { number: nil } }
        }.not_to change(ReverseBinary, :count)
      end

      it 'renders the new template' do
        post :create, params: { reverse_binary: { number: nil } }
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'GET #show' do
    it 'assigns the requested reverse_binary to @reverse_binary' do
      reverse_binary = ReverseBinary.create(number: 101)
      get :show, params: { id: reverse_binary.id }
      expect(assigns(:reverse_binary)).to eq(reverse_binary)
    end

    it 'renders the show template' do
      reverse_binary = ReverseBinary.create(number: 101)
      get :show, params: { id: reverse_binary.id }
      expect(response).to render_template(:show)
    end
  end
end