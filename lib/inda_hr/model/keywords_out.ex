# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.KeywordsOut do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Query",
    :"Language",
    :"Results"
  ]

  @type t :: %__MODULE__{
    :"Query" => String.t,
    :"Language" => String.t,
    :"Results" => [inda_hr.Model.SearchTerm.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.KeywordsOut do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Results", :list, inda_hr.Model.SearchTerm, options)
  end
end

