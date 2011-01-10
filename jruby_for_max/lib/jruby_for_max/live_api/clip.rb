module JRubyForMax::LiveAPI

  # A represetation of a Clip
  class Clip < LiveObject

    attr_reader :notes

    def goto_selected_clip &block
      goto :live_set, :view, :highlighted_clip_slot, :clip, &block
    end

    def goto_clip track_index, scene_index, &block
      goto :live_set, :tracks, track_index, :clip_slots, scene_index, :clip, &block
    end

    def get_notes &block
      return if not exists?
      # along with the notes, we'll need the clip length and loop_start point to
      # be able to figure out where in the clips the notes are, so we get those first:
      get :length do
        get :loop_start do
          call :select_all_notes do
            call :get_selected_notes do |*data|
              case data.shift # first data element is note property
                when :notes
                  @notes = []
                when :note
                  @notes << Note.new(*data)
                when :done
                  block.call() if block
              end
            end
          end
        end
      end
    end

  end

end
