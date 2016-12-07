#==============================================================================
# Skip Title Screen                                           JV Master Script
#------------------------------------------------------------------------------
# Skip Title Screen, going to first game map.
#==============================================================================

#==============================================================================
# Scene Title
#==============================================================================
class Scene_Title < Scene_Base
  def start
    SceneManager.clear
    Graphics.freeze
    DataManager.setup_new_game
    $game_map.autoplay
    SceneManager.goto(Scene_Map)
  end
  
  def terminate
    SceneManager.snapshot_for_background
    Graphics.fadeout(Graphics.frame_rate)
  end
end
#==============================================================================