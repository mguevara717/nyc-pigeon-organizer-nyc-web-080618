def nyc_pigeon_organizer(data)
    new_hash = {}

    data.each do |key, value|
      value.each do |k, v|
        v.each do |name|
          new_hash[name] ||= {}
          new_hash[name][key] ||= []
          new_hash[name][key] << k.to_s
        end
      end
    end
    new_hash
end
