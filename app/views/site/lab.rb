class SomethingController < ActionController::Base
    def brother_check
        Intab.where(template: "blogList").each do |intab|
            title       = intab.title
            turn        = intab.turn
            template    = intab.template
            id          = intab.id
            puts "\n인탭명 : #{title}, id ; #{id}, 몇번째? : #{turn}, 템플릿 : #{template}\n\n"
        end
    end
end