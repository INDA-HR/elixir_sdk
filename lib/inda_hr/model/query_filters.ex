# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.QueryFilters do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Should",
    :"MustNot",
    :"Filter"
  ]

  @type t :: %__MODULE__{
    :"Should" => [inda_hr.Model.FilterField.t] | nil,
    :"MustNot" => [inda_hr.Model.FilterField.t] | nil,
    :"Filter" => [inda_hr.Model.FilterField.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.QueryFilters do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Should", :list, inda_hr.Model.FilterField, options)
    |> deserialize(:"MustNot", :list, inda_hr.Model.FilterField, options)
    |> deserialize(:"Filter", :list, inda_hr.Model.FilterField, options)
  end
end
