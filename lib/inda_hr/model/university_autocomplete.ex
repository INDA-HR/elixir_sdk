# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.UniversityAutocomplete do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ID",
    :"Name",
    :"AltName",
    :"Acronym"
  ]

  @type t :: %__MODULE__{
    :"ID" => String.t,
    :"Name" => String.t | nil,
    :"AltName" => String.t | nil,
    :"Acronym" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UniversityAutocomplete do
  def decode(value, _options) do
    value
  end
end

