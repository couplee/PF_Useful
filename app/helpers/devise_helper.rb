module DeviseHelper                                                  #flash特有の余白消す1/3
  def bootstrap_alert(key)
    case key
    when "alert"
      "light"
    when "notice"
      "light"
    when "error"
      "light"
    end
  end
end