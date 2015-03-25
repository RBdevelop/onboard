class LessonsController < InheritedResources::Base

  private

    def lesson_params
      params.require(:lesson).permit(:title, :description, :document, :video_url)
    end
end

