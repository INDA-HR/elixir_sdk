# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.PreferredConListSkills do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Preferred
  ]

  @type t :: %__MODULE__{
    :Preferred => [inda_hr.Model.OptionalJobAdSkill.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.PreferredConListSkills do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Preferred, :list, inda_hr.Model.OptionalJobAdSkill, options)
  end
end

