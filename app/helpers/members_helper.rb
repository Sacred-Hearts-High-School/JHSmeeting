module MembersHelper

  def personTypeStr(num)
    case num
      when 1 then "神父"
      when 2 then "修女"
      when 3 then ""
    end
  end

  def roomTypeStr(num)
    case num
      when 1 then "自理"
      when 2 then "單人"
      when 3 then "雙人*"
      when 4 then "雙人"
    end
  end

  def roomDateStr(num)
    case num
      when 0 then "自理"
      when 1 then "兩天"
      when 2 then "一天"
    end
  end

  def foodStr(num)
    case num
      when 1 then ""
      when 2 then "素"
    end
  end


  def transportationStr(num)
    case num
      when 1 then "自行前往"
      when 2 then "自行前往*"
      when 3 then "台鐵"
      when 4 then "高鐵烏日"
      when 5 then "高鐵嘉義"
    end
  end

  def groupStr(num)
    case num
      when 1 then "A、B、C"
      when 2 then "A、C、B"
      when 3 then "B、A、C"
      when 4 then "B、C、A"
      when 5 then "C、A、B"
      when 6 then "C、B、A"
    end
  end

end
