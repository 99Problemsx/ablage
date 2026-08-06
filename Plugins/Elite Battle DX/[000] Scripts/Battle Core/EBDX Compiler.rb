#===============================================================================
#  Compiler Module for Elite Battle: DX
#-------------------------------------------------------------------------------
#  used to compile PBS data and interpret them on run-time
#===============================================================================
module CompilerEBDX
  #-----------------------------------------------------------------------------
  # Luka's older utility releases exposed Env.interpret for these config files.
  # That helper no longer exists in the v22/Linux stack, so EBDX keeps the tiny
  # parser it needs locally. Values deliberately remain arrays because every
  # EBDX PBS consumer expects the original Env.interpret data shape.
  #-----------------------------------------------------------------------------
  def self.interpret_value(value)
    return true  if value.downcase == "true"
    return false if value.downcase == "false"
    return value.to_i if value.match?(/\A-?\d+\z/)
    return value.to_f if value.match?(/\A-?(?:\d+\.\d*|\d*\.\d+)\z/)
    value
  end

  def self.interpret_config(filename)
    data = {}
    section = nil
    subsection = "__pk__"
    File.foreach(filename, encoding: "UTF-8") do |raw_line|
      line = raw_line.delete_prefix("\uFEFF").rstrip
      stripped = line.strip
      next if stripped.empty? || stripped.start_with?("#")
      if stripped.match?(/\A\[[^\]]+\]\z/)
        section = stripped[1...-1]
        data[section] ||= {}
        subsection = "__pk__"
        next
      end
      next if section.nil?
      if !stripped.include?("=")
        subsection = stripped
        data[section][subsection] ||= {}
        next
      end
      key, raw_value = stripped.split("=", 2).map(&:strip)
      target = (data[section][subsection] ||= {})
      target[key] = raw_value.split(",").map do |part|
        interpret_value(part.strip)
      end
    end
    data
  end

  #-----------------------------------------------------------------------------
  # get base maps to compile
  #-----------------------------------------------------------------------------
  def self.getCompileMaps
    files = []
    Dir.get("PBS/EBDX", "*.txt", false).each do |d|
      f = d.split(".")[0]
      files.push(f) if !files.include?(f) && EliteBattle.configPresent?(f)
    end
    return files
  end
  #-----------------------------------------------------------------------------
  # compile all the necessary PBS data
  #-----------------------------------------------------------------------------
  def self.compile(mustCompile = false)
    return if !$DEBUG || !Dir.safe?("PBS/EBDX") || FileTest.exist?("Game.rgssad")
    pbSetWindowText("Compiling EBDX data")
    pbs = Dir.get("PBS/EBDX", "*.txt", false)
    # show message
    echoln ""
    comp = false
    # iterate through possible PBS files
    for filename in self.getCompileMaps
      #------------------------------------------------------------------------
      refresh = !FileTest.exist?("Data/#{filename}.ebdx")
      refresh = true if Input.press?(Input::CTRL) || mustCompile
      # main handler for base file
      refresh = true if !refresh && FileTest.exist?("PBS/EBDX/#{filename}.txt") && File.mtime("PBS/EBDX/#{filename}.txt") > File.mtime("Data/#{filename}.ebdx")
      # iterate through all possible packs
      for f in pbs
        # skip if main or not part of current iterable
        next if f == "#{filename}.txt" || !f.start_with?(filename) || refresh
        refresh = true if File.mtime("PBS/EBDX/#{f}") > File.mtime("Data/#{filename}.ebdx")
      end
      # refresh if compiled data is older than compiled scripts
      refresh = true if !refresh && FileTest.exist?("Data/#{filename}.ebdx") && FileTest.exist?("Data/PluginScripts.rxdata") && File.mtime("Data/PluginScripts.rxdata") > File.mtime("Data/#{filename}.ebdx")
      #------------------------------------------------------------------------
      next if !refresh
      # show message
      if !comp
        echoln "Compiling Elite Battle: DX data...\r\n"; comp = true
      end
      echoln "  -> compiling `#{filename.downcase}.txt` data..."
      read = {}
      # read main PBS
      read.deep_merge!(interpret_config("PBS/EBDX/#{filename}.txt")) if FileTest.exist?("PBS/EBDX/#{filename}.txt")
      # iterate through all possible packs
      for f in pbs
        # skip if main or not part of current iterable
        next if f == "#{filename}.txt" || !f.start_with?(filename)
        read.deep_merge!(interpret_config("PBS/EBDX/#{f}"))
      end
      #------------------------------------------------------------------------
      # compile PBS data
      save_data(read, "Data/#{filename}.ebdx")
    end
    # clean up
    GC.start
    echoln comp ? "\r\nCompiled all Elite Battle: DX data.\r\n" : "\r\nAll Elite Battle: DX data already compiled.\r\n"
    EliteBattle.set(:compiled, true)
    pbSetWindowText(nil)
  end
  #-----------------------------------------------------------------------------
  # interpret all the data from cache
  #-----------------------------------------------------------------------------
  def self.addFromCached
    return if !$DEBUG || EliteBattle::SKIP_CACHED_DATA
    # get cache
    cache = EliteBattle.get(:cachedData)
    return if cache.nil?

    for idx in 0..cache.length # for ch in cache
      ch = cache[idx] 
      # run each from cache
      EliteBattle.add_data(*ch) if !ch.nil?
    end

    # clear cache
    cache.clear
    EliteBattle.set(:cachedData, [])

    # force start garbage collector
    GC.start
  end
  #-----------------------------------------------------------------------------
end
#===============================================================================
# run compiler
module Compiler
  #-----------------------------------------------------------------------------
  class << Compiler
    alias compile_all_ebdx compile_all
  end
  #-----------------------------------------------------------------------------
  # Essentials v22 calls Compiler.compile_all without an argument during its
  # normal startup compilation. Keep the explicit true/false call used by the
  # debug menu compatible as well.
  def self.compile_all(mustCompile = false)
    # run Essentials compiler
    compile_all_ebdx(mustCompile) { |msg| pbSetWindowText(msg); echoln(msg) }
    # compile EBDX
    CompilerEBDX.compile(mustCompile)
  end
  #-----------------------------------------------------------------------------
end
