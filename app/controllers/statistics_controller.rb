class StatisticsController < ApplicationController
  def index
    @querie =
      { usage:
        {
          thr_most_commented:       'Returns the most commented threads of a game, sub forum or for every comments',
          gam_most_played:          'Returns the most popular games',
          users_register_record:    'Returns the count of players registered on a intervale of time',
          mails_sent_record:        'Returns the count of mails sent on a intervale of time',
          genre_most_wanted:        'Returns the most wanted genres',
          best_players:             'Returns the best players on the platform',
          gam_most_commented_week:  'Returns the most popular games at the week'
        } }
    render json: @querie, status: 422
  end

  def show
    @action = params['id']
    case @action
    when 'thr_most_commented'
      thr_most_commented(params['sub_forum'], params['game'])
    when 'gam_most_played'
      gam_most_played
    when 'users_register_record'
      users_register_record(params)
    when 'mails_sent_record'
      mails_sent_record
    when 'genre_most_wanted'
      genre_most_wanted
    when 'best_players'
      best_players
    when 'gam_most_played_week'
      gam_most_played_week
    else
      index
    end
  end

  private

  def gam_most_played_week()
    @querie = Game.getMostCommentedLastWeek
    render json: @querie
  end

  def thr_most_commented(sub_forum, game)
    @querie = []
    if sub_forum.nil? && game.nil?
      @querie = ThreadForum.getMostCommentedThreads
    elsif !sub_forum.nil? && !game.nil?
      @querie = { error: 'Perform this get with only a game or a sub forum' }
      render json: @querie, status: 422
      return
    elsif !sub_forum.nil?
      @querie = SubForum.find(sub_forum).getMostCommentedThreads
    else
      @querie = Game.find(game).getMostCommentedThreads
    end
    render json: @querie, each_serializer: ThreadForumSimpleSerializer
  end

  def gam_most_played
    @querie = Game.getMostPlayed.paginate(page: params['page'], per_page: 5)
    render json: @querie, each_serializer: GameSimpleSerializer
  end

  def users_register_record(params)
    if params["start_date"] == nil || params["end_date"] == nil || params["per_day"] == nil
      users_register_record_error
      return
    else
      start_date = Date.parse(params["start_date"])
      end_date = Date.parse(params["end_date"])
      if params["per_day"] == "1"
        @querie = PlayerProfile.getUsersBetweenDatesPerDay(start_date, end_date)
      else
        @querie = PlayerProfile.getUsersBetweenDatesPerMonth(start_date, end_date)
      end
      render json: treat_querie_dir(@querie)
    end
  end

  def mails_sent_record
    if params["start_date"] == nil || params["end_date"] == nil || params["per_day"] == nil
      users_register_record_error
      return
    else
      start_date = Date.parse(params["start_date"])
      end_date = Date.parse(params["end_date"])
      if params["per_day"] == "1"
        @querie = Mailbox.getMailsBetweenDatesPerDay(start_date, end_date)
      else
        @querie = Mailbox.getMailsBetweenDatesPerMonth(start_date, end_date)
      end
      render json: treat_querie_dir(@querie)
    end
  end

  def users_register_record_error
    @querie = {error: {
      start_date: "YYYYMMDDD. Can't be null",
      end_date: "YYYYMMDDD.Can't be null",
      per_day: "Boolean. Can't be null"
    }}
    render json: @querie
  end

  def genre_most_wanted
    @querie = Genre.getMostViewed
    render json: @querie, each_serializer: GenreSerializer
  end

  def best_players
    @querie = PlayerProfile.getBestPlayers
    render json: @querie, each_serializer: PlayerProfileSimpleSerializer
  end

  def treat_querie_dir(querie)
    answer = []
    for i in querie.keys
      answer += [{date: i, count: querie  [i]}]
    end
    answer
  end
end
