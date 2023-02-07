# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.ResumePersonNamePersonName do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Prefix,
    :GivenName,
    :MiddleNames,
    :FamilyName,
    :Suffix,
    :FormattedName
  ]

  @type t :: %__MODULE__{
    :Prefix => IndaHr.Model.ResumePersonNamePrefix.t | nil,
    :GivenName => IndaHr.Model.BaseModelsName.t | nil,
    :MiddleNames => [IndaHr.Model.BaseModelsName.t] | nil,
    :FamilyName => IndaHr.Model.BaseModelsName.t | nil,
    :Suffix => IndaHr.Model.ResumePersonNameSuffix.t | nil,
    :FormattedName => IndaHr.Model.BaseModelsName.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.ResumePersonNamePersonName do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Prefix, :struct, IndaHr.Model.ResumePersonNamePrefix, options)
    |> deserialize(:GivenName, :struct, IndaHr.Model.BaseModelsName, options)
    |> deserialize(:MiddleNames, :list, IndaHr.Model.BaseModelsName, options)
    |> deserialize(:FamilyName, :struct, IndaHr.Model.BaseModelsName, options)
    |> deserialize(:Suffix, :struct, IndaHr.Model.ResumePersonNameSuffix, options)
    |> deserialize(:FormattedName, :struct, IndaHr.Model.BaseModelsName, options)
  end
end
