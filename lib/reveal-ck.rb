require_relative 'reveal-ck/version'
require_relative 'reveal-ck/config'
require_relative 'reveal-ck/file_string_replacer'
require_relative 'reveal-ck/file_slicer'
require_relative 'reveal-ck/file_splicer'
require_relative 'reveal-ck/template_finder'
require_relative 'reveal-ck/template_processor'
require_relative 'reveal-ck/slide'
require_relative 'reveal-ck/presentation'
require_relative 'reveal-ck/build_task'
require_relative 'reveal-ck/builder'
require_relative 'reveal-ck/slides_html_builder'
require_relative 'reveal-ck/slide_builder'
require_relative 'reveal-ck/presentation_builder'

module RevealCK
  reveal_ck_lib = File.dirname __FILE__
  revealjs_within_reveal_ck = File.join reveal_ck_lib, '..', 'reveal.js'
  REVEALJS_FILES = Dir.glob "#{revealjs_within_reveal_ck}/**/*"
end
