# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.RequiredConListSkills do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Required
  ]

  @type t :: %__MODULE__{
    :Required => [IndaHr.Model.OptionalJobAdSkill.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.RequiredConListSkills do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Required, :list, IndaHr.Model.OptionalJobAdSkill, options)
  end
end
