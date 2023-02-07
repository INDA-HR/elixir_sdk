# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.SearchEvidence do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Terms
  ]

  @type t :: %__MODULE__{
    :ID => String.t,
    :Terms => [IndaHr.Model.SearchTerm.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.SearchEvidence do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Terms, :list, IndaHr.Model.SearchTerm, options)
  end
end
