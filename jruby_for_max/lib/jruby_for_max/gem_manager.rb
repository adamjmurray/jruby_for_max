require 'rubygems/commands/install_command'
require 'rubygems/commands/uninstall_command'
require 'rubygems/commands/update_command'

module JRubyForMax

  # An object for listing, installing, updating, and removing gems in JRuby for Max.
  class GemManager
    class << self # All methods are class methods.

      # List all installed gems
      def list
        Gem::Specification.find_all
      end

      # Install the latest version of a gem, or a specific version if a version number is given
      def install gem_name, version=nil
        args = ['--no-ri', '--no-rdoc', gem_name]
        args += ['--version', version] if version
        cmd = Gem::Commands::InstallCommand.new
        cmd.handle_options args
        cmd.execute
      rescue Gem::SystemExitException => e
        # Not sure why the install command raises SystemExitException in successful cases, but it does.
        # So we just check for a success exit code 0.
        raise unless e.exit_code != 0
      end

      # Uninstall all versions of a gem, or a specific version if a version number is given
      def uninstall gem_name, version=nil
        cmd = Gem::Commands::UninstallCommand.new
        args = ['-x', '-I', gem_name] # -x removes executables without prompting. -I ignores dependecies.
        args += ['--version', version] if version
        cmd.handle_options args
        cmd.execute
      end

      # Update a gem to the latest version.
      def update gem_name
        cmd = Gem::Commands::UpdateCommand.new
        cmd.handle_options ['--no-rdoc', '--no-ri', gem_name]
        cmd.execute
      end

    end
  end
end
