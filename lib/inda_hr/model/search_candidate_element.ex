# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.SearchCandidateElement do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Score,
    :Rank,
    :ID,
    :Data
  ]

  @type t :: %__MODULE__{
    :Score => float(),
    :Rank => integer(),
    :ID => String.t,
    :Data => IndaHr.Model.ResumeCommonMinimalData.t | nil
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.SearchCandidateElement do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, IndaHr.Model.ResumeCommonMinimalData, options)
  end
end
