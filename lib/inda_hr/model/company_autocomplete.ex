# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.CompanyAutocomplete do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :ID
  ]

  @type t :: %__MODULE__{
    :Name => inda_hr.Model.BaseLocationsValueModelStrictStr.t,
    :ID => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.CompanyAutocomplete do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Name, :struct, inda_hr.Model.BaseLocationsValueModelStrictStr, options)
  end
end

