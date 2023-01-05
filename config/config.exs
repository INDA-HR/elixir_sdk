# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :inda_hr___i_ntelligent_data_analysis_for_hr, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:inda_hr___i_ntelligent_data_analysis_for_hr, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

config :inda_hr___i_ntelligent_data_analysis_for_hr, base_url: "https://api.inda.ai"

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
