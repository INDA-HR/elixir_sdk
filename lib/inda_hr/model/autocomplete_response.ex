# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.AutocompleteResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Term",
    :"Candidates"
  ]

  @type t :: %__MODULE__{
    :"Term" => String.t,
    :"Candidates" => %{optional(String.t) => integer()}
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.AutocompleteResponse do
  def decode(value, _options) do
    value
  end
end

