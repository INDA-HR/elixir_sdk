# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RelatedTerms do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"RelatedTerms"
  ]

  @type t :: %__MODULE__{
    :"RelatedTerms" => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RelatedTerms do
  def decode(value, _options) do
    value
  end
end
