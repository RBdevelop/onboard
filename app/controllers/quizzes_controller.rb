class QuizzesController < InheritedResources::Base

  private

    def quiz_params
      params.require(:quiz).permit(:title, :description, :document, :quiz_url)
    end
end

