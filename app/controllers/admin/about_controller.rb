module Admin
  class AboutController < AdminController
    before_action :set_about

    def edit
    end

    def update
      @about.update(about_params)
      @about.save
      redirect_to admin_about_edit_url
    end

    private

    def about_params
      params.require(:content).permit(:text)
    end

    def set_about
      @about = Content.find_by(name: 'about') || Content.new(name: 'about')
    end
  end
end
