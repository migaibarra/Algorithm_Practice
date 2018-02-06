def merge_ranges(meetings)

  #sort by time
  sorted_meetings = meetings.sort

  #initialize merge_meetings with the earliest meeting
  merged_meetings = [sorted_meetings[0]]

  sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end|
    last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]

    # if the current meeting overlaps with the last merged meeting, use the
    # later end time of the two
    if current_meeting_start <= last_merged_meeting_end
      merged_meetings[-1] = [last_merged_meeting_start, [last_merged_meeting_end, current_meeting_end].max]

    # add the current meeting since it doesn't overlap
    else
      merged_meetings.push([current_meeting_start, current_meeting_end])
    end
  end

  return merged_meetings
end

p merge_ranges([[0,2], [1,4], [9,11]])
