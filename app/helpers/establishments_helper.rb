module EstablishmentsHelper
  def format_stars(establishment)
    "*" * establishment.stars.round
  end
end
