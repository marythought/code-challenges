def top_3_words(text)
  return [] if (/\w/ =~ text).nil?
  dict = hash_text(text)
  top_counts = dict.values.uniq.sort.reverse.take(3)
  top_results = dict.select { |_k, v| v >= top_counts[-1] }
                    .sort_by { |_k, v| -v }
                    .take(3)
                    .map(&:first)
end

def hash_text(text)
  dict = {}
  text.downcase.delete(".,!?/").split(" ").each do |word|
    dict[word] = dict[word].nil? ? 1 : dict[word] + 1
  end
  dict
end
ir
