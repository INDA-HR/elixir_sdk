# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.TraditionalDocsSearchQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :QueryTerms,
    :QueryFilters
  ]

  @type t :: %__MODULE__{
    :QueryTerms => [inda_hr.Model.SemanticCommonSimpleTerm.t],
    :QueryFilters => inda_hr.Model.QueryFilters.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.TraditionalDocsSearchQuery do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:QueryTerms, :list, inda_hr.Model.SemanticCommonSimpleTerm, options)
    |> deserialize(:QueryFilters, :struct, inda_hr.Model.QueryFilters, options)
  end
end

