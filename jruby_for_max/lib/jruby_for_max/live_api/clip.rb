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
      get :loop_start do
        get :loop_end do
          call :select_all_notes do
            call :get_selected_notes do |*data|
              case data.shift # first data element is note property
                when :notes
                  @notes = []
                when :note
                  @notes << Note.new(*data)
                when :done
                  block.call(@notes) if block
              end
            end
          end
        end
      end
    end

    def set_notes(notes=nil)
      notes ||= @notes
      call :replace_selected_notes
      call :notes, notes.size
      notes.each { |note| call :note, *note.to_message }
      call :done
    end

    def transform_notes &block
      return if not block
      get_notes do
        if not @notes.empty?
          block.call(@notes)
          set_notes
        end
      end
    end

    def transform_selected_clip &block
      goto_selected_clip do
        transform_notes &block
      end
    end

    def transform_clip track_index, scene_index, &block
      goto_clip track_index, scene_index do
        transform_notes &block
      end
    end

    def length
      @loop_end - @loop_start
    end

  end

end

