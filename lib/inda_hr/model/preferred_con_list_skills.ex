# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.PreferredConListSkills do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Preferred
  ]

  @type t :: %__MODULE__{
    :Preferred => [IndaHr.Model.OptionalJobAdSkill.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.PreferredConListSkills do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Preferred, :list, IndaHr.Model.OptionalJobAdSkill, options)
  end
end
