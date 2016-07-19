class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  $tab = []
  $tab = [
          {"id":"1", "title":"인본소개", "icon":"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", "picture":"/main/images/slider/slide4.jpg"},
          {"id":"2", "title":"법인구성원", "icon":"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", "picture":"/main/images/slider/slide8.jpg"},
          {"id":"3", "title":"업무분야", "icon":"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", "picture":"/main/images/slider/slide4.jpg"},
          {"id":"4", "title":"인본소식", "icon":"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", "picture":"/main/images/slider/slide4.jpg"},
          {"id":"5", "title":"고객상담", "icon":"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", "picture":"/main/images/slider/slide4.jpg"}
         ]
  $intab = []
  $intab = [
            {"id":"1", "tab_id":"3", "title":"분야별", "description":"법무법인 인본의 업무 분야 입니다.", "":""},
            {"id":"2", "tab_id":"3", "title":"기획소송", "description":"인본에서 진행중인 기획소송입니다.", "":""},
            {"id":"3", "tab_id":"3", "title":"업무일정", "description":"인본의 업무일정 입니다.", "":""},
            {"id":"4", "tab_id":"4", "title":"자료실", "description":"법무법인 인본의 자료실 입니다.", "":""},
            {"id":"5", "tab_id":"4", "title":"공지사항", "description":"법무법인 인본이 알리는 공지사항 입니다.", "":""},
            {"id":"6", "tab_id":"5", "title":"자주하는 질문", "description":"가장 자주 하시는 질문을 모았습니다.", "":""},
           ]
end
