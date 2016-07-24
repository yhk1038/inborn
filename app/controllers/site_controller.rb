class SiteController < ApplicationController
  # layout 'site'

  def entering
    render layout: false
  end

  def intro
    render params[:tab]
  end

  def member
    render params[:tab]
  end

  def main
    @carousel = ["slide2","slide3","slide4","slide5","slide6","slide7","slide8"]
  end


  def introduce_1 # Temp templete sample no.1 >> introduce-type

  end

  def dream_1 # Temp templete sample no.1 >> introduce-type / second use
  end

  def org_2 # Temp templete sample no.2 >> org-type
  end

  def map_3 # Temp templete sample no.3 >> map-type
  end

  def network_4 # Temp templete sample no.4 >> card-type
  end

  def member_5 # Temp templete sample no.5 >> people-type
  end

  def member2_5 # Temp templete sample no.5 >> people-type / second use
  end

  def member3_5 # Temp templete sample no.5 >> people-type / third use
  end

  def member4_5 # Temp templete sample no.5 >> people-type / fourth use
  end

  def member5_5 # Temp templete sample no.5 >> people-type / fifth use
  end

  # def grouping_6 # Temp templete sample no.6 >> list-type
  #   @intabs= []
  #   allTabs = []
  #   $intab.each do |x|
  #     x.size.times { |y| allTabs.push(x[y]) }
  #   end
  #   intab = $intab[6]
  #   intab.size.times { |x|  if intab[x][:id] == params[:id] then @intab = intab[x] end } # Search -> current_intab
  #   $tab.size.times { |x| if $tab[x][:id] == @intab[:tab_id] then @tab = $tab[x] end }  # Search -> current_tab
  #   allTabs.size.times { |x|  if @tab[:id] == allTabs[x][:tab_id] then @intabs.push(allTabs[x]) end }  # Search -> brother_tabs

  #   sortingTab = [
  #                   ["전체","기업법무일반","금융","공정거래","조세-행정","지적재산권","부동산","엔터테인먼트-스포츠","가사","형사","일반 민사"],
  #                   ["전체","경찰수당소송","근저당권설정비반환","KT개인정보유출 집단소송","아현2구역 조합원지위 확인의 소"],
  #                   [],[],[],[],[]
  #                 ]
  #   @sortingTab = sortingTab[@intab[:id].to_i - 1]
  #     # eval("@table#{i} = []")
  #   @table =  [
  #               [10,	"일반 민사",            "일반 민사 제분야", 	            "[레벨:2]人本",	          "2012.08.06",	"12531"],
  #               [9,	  "형사",	                "형사",	 	                        "[레벨:3]administrator",  "2012.08.06",	"9265"],
  #               [8,	  "가사",	                "가사",	 	                        "[레벨:3]administrator",	"2012.08.06",	"10570"],
  #               [7,	  "엔터테인먼트·스포츠",	"엔터테인먼트∙스포츠	 fileimage","[레벨:3]administrator",	"2012.08.06",	"12347"],
  #               [6,	  "부동산",	              "부동산 · 건설 · 하자보수",	 	    "[레벨:3]administrator",	"2012.08.06",	"9162"],
  #               [5,	  "지적재산권",	          "지식재산권",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9556"],
  #               [4,	  "조세·행정",	          "조세∙행정",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9139"],
  #               [3,	  "공정거래",	            "공정거래",	 	                    "[레벨:3]administrator",	"2012.08.06",	"9415"],
  #               [2,	  "금융",	                "금융",	 	                        "[레벨:3]administrator",	"2012.08.06",	"9392"],
  #               [1,	  "기업법무일반",	        "기업법무일반	 fileimage",	      "[레벨:3]administrator",	"2012.08.06",	"9740"]
  #             ]
  # end

  def grouping_6 # Temp templete sample no.6 >> list-type
    @intab, @tab, @intabs = searcher(params[:id])

    sortingTab = [
                    ["전체","기업법무일반","금융","공정거래","조세-행정","지적재산권","부동산","엔터테인먼트-스포츠","가사","형사","일반 민사"],
                    ["전체","경찰수당소송","근저당권설정비반환","KT개인정보유출 집단소송","아현2구역 조합원지위 확인의 소"],
                    [],[],[],[],[]
                  ]
    @sortingTab = sortingTab[@intab[:id].to_i - 1]
      # eval("@table#{i} = []")
    @table =  [
                [10,	"일반 민사",            "일반 민사 제분야", 	            "[레벨:2]人本",	          "2012.08.06",	"12531"],
                [9,	  "형사",	                "형사",	 	                        "[레벨:3]administrator",  "2012.08.06",	"9265"],
                [8,	  "가사",	                "가사",	 	                        "[레벨:3]administrator",	"2012.08.06",	"10570"],
                [7,	  "엔터테인먼트·스포츠",	"엔터테인먼트∙스포츠	 fileimage","[레벨:3]administrator",	"2012.08.06",	"12347"],
                [6,	  "부동산",	              "부동산 · 건설 · 하자보수",	 	    "[레벨:3]administrator",	"2012.08.06",	"9162"],
                [5,	  "지적재산권",	          "지식재산권",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9556"],
                [4,	  "조세·행정",	          "조세∙행정",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9139"],
                [3,	  "공정거래",	            "공정거래",	 	                    "[레벨:3]administrator",	"2012.08.06",	"9415"],
                [2,	  "금융",	                "금융",	 	                        "[레벨:3]administrator",	"2012.08.06",	"9392"],
                [1,	  "기업법무일반",	        "기업법무일반	 fileimage",	      "[레벨:3]administrator",	"2012.08.06",	"9740"]
              ]
  end

  def blogList_7 # Temp templete sample no.7 >> blogList-type
    @intab, @tab, @intabs = searcher(params[:id])
  end

  def wall_8 # Temp templete sample no.8 >> wall-type
  end

  def searcher(id)
    @intabs= []
    allTabs = []
    $intab.each do |x|
      x.size.times { |y| allTabs.push(x[y]) }
    end
    intab = $intab[6]
    intab.size.times { |x|  if intab[x][:id] == params[:id] then @intab = intab[x] end } # Search -> current_intab
    $tab.size.times { |x| if $tab[x][:id] == @intab[:tab_id] then @tab = $tab[x] end }  # Search -> current_tab
    allTabs.size.times { |x|  if @tab[:id] == allTabs[x][:tab_id] then @intabs.push(allTabs[x]) end }  # Search -> brother_tabs

    return @intab, @tab, @intabs
  end

  def post_write
    @intab = Intab.find(params[:id])
    @post = Post.find(params[:post_id]) unless params[:post_id].nil?
    @tab = @intab.tab
    @intabs = @tab.intabs
    @mod_select = params[:mod]

    # @is_admin = false # 베포버전
    @is_admin = true # 관리자 권한시를 테스트

    if user_signed_in?
      if current_user.is_admin?
        @is_admin = true
      end
    end
    
    unless params[:post_id].nil?
      @post = Post.find(params[:post_id])
      render 'site/post_modify'
    end
  end

  def post_read
    @post = Post.find(params[:id])
    @board = @post.board
    @intab = @board.intab
    @tab = @intab.tab
    @intabs = @tab.intabs
    @mod_select = params[:mod]

    # @is_admin = false # 베포버전
    @is_admin = true # 관리자 권한시를 테스트

    if user_signed_in?
      if current_user.is_admin?
        @is_admin = true
      end
    end
  end

  def page
    @intab = Intab.find(params[:id])
    @tab = @intab.tab
    @intabs = @tab.intabs
    @mod_select = params[:mod]

    # @is_admin = false # 베포버전
    @is_admin = true # 관리자 권한시를 테스트

    if user_signed_in?
      if current_user.is_admin?
        @is_admin = true
      end
    end

    @current_page = 1
    unless params[:page] == nil || params[:page].length < 1
      @current_page = params[:page].to_i
    end

    @last_page = 5
    if @intab.posts.count % 5 == 0
      @page_count = @intab.posts.count/5
    else
      @page_count = @intab.posts.count/5 + 1
      if @current_page.to_i == @page_count.to_i
        @last_page = @intab.posts.count % 5
      end
    end




    sortingTab = [
                    ["전체","기업법무일반","금융","공정거래","조세-행정","지적재산권","부동산","엔터테인먼트-스포츠","가사","형사","일반 민사"],
                    ["전체","경찰수당소송","근저당권설정비반환","KT개인정보유출 집단소송","아현2구역 조합원지위 확인의 소"],
                    [],[],[],[],[]
                  ]
    @sortingTab = sortingTab[@intab.turn.to_i - 1]

    @table =  [
                [10,	"일반 민사",            "일반 민사 제분야", 	            "[레벨:2]人本",	          "2012.08.06",	"12531"],
                [9,	  "형사",	                "형사",	 	                        "[레벨:3]administrator",  "2012.08.06",	"9265"],
                [8,	  "가사",	                "가사",	 	                        "[레벨:3]administrator",	"2012.08.06",	"10570"],
                [7,	  "엔터테인먼트·스포츠",	"엔터테인먼트∙스포츠	 fileimage","[레벨:3]administrator",	"2012.08.06",	"12347"],
                [6,	  "부동산",	              "부동산 · 건설 · 하자보수",	 	    "[레벨:3]administrator",	"2012.08.06",	"9162"],
                [5,	  "지적재산권",	          "지식재산권",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9556"],
                [4,	  "조세·행정",	          "조세∙행정",	 	                  "[레벨:3]administrator",	"2012.08.06",	"9139"],
                [3,	  "공정거래",	            "공정거래",	 	                    "[레벨:3]administrator",	"2012.08.06",	"9415"],
                [2,	  "금융",	                "금융",	 	                        "[레벨:3]administrator",	"2012.08.06",	"9392"],
                [1,	  "기업법무일반",	        "기업법무일반	 fileimage",	      "[레벨:3]administrator",	"2012.08.06",	"9740"]
              ]
    render 'site/template/' + @intab.template
  end
end
