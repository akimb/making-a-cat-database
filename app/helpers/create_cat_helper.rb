module CreateCatHelper

  def adoption_status(cat)
    if cat.adopted
      'Found a home!'
    else
      'Looking for a home!'
    end
  end
end
