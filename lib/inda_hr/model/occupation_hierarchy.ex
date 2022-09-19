# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OccupationHierarchy do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Level0",
    :"Level1"
  ]

  @type t :: %__MODULE__{
    :"Level0" => inda_hr.Model.BroaderLevelJobtitle.t | nil,
    :"Level1" => inda_hr.Model.BroaderLevelJobtitle.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OccupationHierarchy do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Level0", :struct, inda_hr.Model.BroaderLevelJobtitle, options)
    |> deserialize(:"Level1", :struct, inda_hr.Model.BroaderLevelJobtitle, options)
  end
end

