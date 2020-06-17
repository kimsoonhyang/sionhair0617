class RegistrationsController < Devise::RegistrationsController

  protected
# 로그인 유저는 pw없이 프로필 업데이트 핤 있음
  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  # ==========프로필 편집후 ==========
 def after_update_path_for(resource) #메소트
   user_path(resource)
 end
 # ==========유저 페이지로 링크==========
end
