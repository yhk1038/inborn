# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tab.create!([
        {turn:1, title:"인본소개", icon:"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", picture:"/main/images/slider/slide4.jpg"},
        {turn:2, title:"법인구성원", icon:"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", picture:"/main/images/slider/slide8.jpg"},
        {turn:3, title:"업무분야", icon:"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", picture:"/main/images/slider/slide4.jpg"},
        {turn:4, title:"인본소식", icon:"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", picture:"/main/images/slider/slide4.jpg"},
        {turn:5, title:"고객상담", icon:"https://parkhyunmin-inbon-yhk1038.c9users.io/main/images/inbon_logofix.png", picture:"/main/images/slider/slide4.jpg"}
       ])

Intab.create!([
            #introduce-type
            {turn:"1", tab_id:"1", title:"인사말", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "introduce"},
            {turn:"2", tab_id:"1", title:"인본의 꿈", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "introduce"},

            #org-type
            {turn:"1", tab_id:"1", title:"조직", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "org"},

            #map-type
            {turn:"1", tab_id:"1", title:"찾아오시는 길", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "map"},

            #card-type
            {turn:"1", tab_id:"1", title:"소셜네트워크", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "card"},

            #people-type
            {turn:"1", tab_id:"2", title:"대표변호사", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "people"},
            {turn:"2", tab_id:"2", title:"변호사", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "people"},
            {turn:"3", tab_id:"2", title:"국제변호사", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "people"},
            {turn:"4", tab_id:"2", title:"자문위원", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "people"},
            {turn:"5", tab_id:"2", title:"연구원", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "people"},

            #blogList-type
            {turn:"1", tab_id:"2", title:"연구원활동", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "blogList"},
            {turn:"2", tab_id:"4", title:"최근소식", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "blogList"},
            {turn:"3", tab_id:"4", title:"언론보도", description:"법무법인 인본은 사람을 근본으로 생각하며 일하고, 사람이 숨쉬는 자연을 소중히 합니다.", template: "blogList"},

            #list-type
            {turn:"1", tab_id:"3", title:"분야별", description:"법무법인 인본의 업무 분야 입니다.", template: "list"},
            {turn:"2", tab_id:"3", title:"기획소송", description:"인본에서 진행중인 기획소송입니다.", template: "list"},
            {turn:"3", tab_id:"3", title:"업무일정", description:"인본의 업무일정 입니다.", template: "list"},
            {turn:"4", tab_id:"4", title:"자료실", description:"법무법인 인본의 자료실 입니다.", template: "list"},
            {turn:"5", tab_id:"4", title:"공지사항", description:"법무법인 인본이 알리는 공지사항 입니다.", template: "list"},
            {turn:"6", tab_id:"5", title:"자주하는 질문", description:"가장 자주 하시는 질문을 모았습니다.", template: "list"}
            ])
