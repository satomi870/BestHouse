module ApplicationHelper

  def convert_area_group(area_group_id)
    case area_group_id.to_i
    when 1
      return [1, 2]
    end
  end
end
