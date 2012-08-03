require 'spec_helper'

describe ApplicationController do
  describe "rescue_from CanCan::AccessDenied" do
    controller do
      def index
        raise CanCan::AccessDenied
      end
    end

    subject { get :index }

    context "User is logged in" do
      before(:each) do
        sign_in user
      end

      context "User is admin" do
        let(:user) { FactoryGirl.create(:admin) }
        it { should redirect_to root_url }
      end

      context "User is user" do
        let(:user) { FactoryGirl.create(:user) }
        it { should redirect_to root_url }
      end
    end

    context "User is not logged in" do
      it { should redirect_to new_user_session_path }
    end
  end
end
