class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")

  # Add your actions below this line
  # ================================

  def homepage
    render({ :template => "game_templates/rules.html.erb" })
  end

  def play_rock
    # redirect_to("https://wiki.ubuntu-tw.org/index.php?title=首頁")
    # render({ :plain => "Hello, world!" })
    # render({ :html => "<h1>Hello, world!</h1>".html_safe })
    render({ :template => "game_templates/user_rock.html.erb", :layout => "wrapper.html.erb" })
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb", :layout => "wrapper.html.erb" })
  end
end
