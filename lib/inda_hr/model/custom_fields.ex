# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.CustomFields do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Fields"
  ]

  @type t :: %__MODULE__{
    :"Fields" => [inda_hr.Model.CustomField.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.CustomFields do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Fields", :list, inda_hr.Model.CustomField, options)
  end
end

