shared_examples_for "Unauthorized action" do |current_role|
  if current_role
    case current_role
    when 'user'
      it { should redirect_to root_url }
    end
  else
    it { should redirect_to new_user_session_path }
  end
end
