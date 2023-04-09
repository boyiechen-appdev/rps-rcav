class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def play_rock
    # redirect_to("https://wiki.ubuntu-tw.org/index.php?title=首頁")
    # render({ :plain => "Hello, world!" })
    # render({ :html => "<h1>Hello, world!</h1>".html_safe })
    render({ :template => "game_templates/user_rock.html.erb" })
  end
end
