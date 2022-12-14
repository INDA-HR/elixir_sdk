# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Headquarter do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Location"
  ]

  @type t :: %__MODULE__{
    :"Name" => inda_hr.Model.BaseLocationsValueModelStrictStr.t,
    :"Location" => inda_hr.Model.CompanyCommonLocation.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Headquarter do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Name", :struct, inda_hr.Model.BaseLocationsValueModelStrictStr, options)
    |> deserialize(:"Location", :struct, inda_hr.Model.CompanyCommonLocation, options)
  end
end

