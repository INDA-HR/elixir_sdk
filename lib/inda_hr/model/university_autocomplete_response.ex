# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.UniversityAutocompleteResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Term,
    :Universities
  ]

  @type t :: %__MODULE__{
    :Term => String.t,
    :Universities => [IndaHr.Model.UniversityAutocomplete.t]
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.UniversityAutocompleteResponse do
  import IndaHr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Universities, :list, IndaHr.Model.UniversityAutocomplete, options)
  end
end
